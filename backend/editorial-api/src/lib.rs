use async_trait::async_trait;
use aws_config::BehaviorVersion;
use aws_sdk_s3::Client;
use lambda_http::http::{Method, StatusCode};
use lambda_http::{Body, Error, Request, Response, run, service_fn};
use serde::Deserialize;
use serde_json::{Value, json};
use std::collections::HashMap;
use std::env;
use std::sync::Arc;
use tracing::error;

const DEFAULT_ALLOWED_ORIGIN: &str = "https://canon.tsonu.com";

#[derive(Debug)]
enum StoreError {
    NotFound,
    Backend(String),
}

#[async_trait]
trait EditorialStore: Send + Sync {
    async fn entry(&self, world_id: &str, entry_id: &str) -> Result<Option<Value>, StoreError>;
}

struct S3EditorialStore {
    client: Client,
    bucket: String,
    prefix: String,
}

#[derive(Deserialize)]
struct EditorialWorld {
    entries: HashMap<String, Value>,
}

impl S3EditorialStore {
    fn key(&self, world_id: &str) -> String {
        let filename = format!("worlds/{world_id}.json");
        if self.prefix.is_empty() {
            filename
        } else {
            format!("{}/{filename}", self.prefix.trim_matches('/'))
        }
    }
}

#[async_trait]
impl EditorialStore for S3EditorialStore {
    async fn entry(&self, world_id: &str, entry_id: &str) -> Result<Option<Value>, StoreError> {
        let result = self
            .client
            .get_object()
            .bucket(&self.bucket)
            .key(self.key(world_id))
            .send()
            .await
            .map_err(|cause| {
                if cause
                    .as_service_error()
                    .is_some_and(|service_error| service_error.is_no_such_key())
                {
                    StoreError::NotFound
                } else {
                    StoreError::Backend(cause.to_string())
                }
            })?;
        let bytes = result
            .body
            .collect()
            .await
            .map_err(|cause| StoreError::Backend(cause.to_string()))?;
        let world: EditorialWorld = serde_json::from_slice(&bytes.into_bytes())
            .map_err(|cause| StoreError::Backend(cause.to_string()))?;
        Ok(world.entries.get(entry_id).cloned())
    }
}

struct App<S> {
    store: S,
    allowed_origin: String,
}

fn valid_identifier(value: &str) -> bool {
    !value.is_empty()
        && value.bytes().all(|byte| {
            byte.is_ascii_lowercase() || byte.is_ascii_digit() || matches!(byte, b'-' | b'_')
        })
}

fn editorial_route(path: &str) -> Option<(&str, &str)> {
    let segments = path.trim_matches('/').split('/').collect::<Vec<_>>();
    match segments.as_slice() {
        ["editorial", world_id, "entries", entry_id]
            if valid_identifier(world_id) && valid_identifier(entry_id) =>
        {
            Some((world_id, entry_id))
        }
        _ => None,
    }
}

fn response(status: StatusCode, body: Body, allowed_origin: &str) -> Result<Response<Body>, Error> {
    Ok(Response::builder()
        .status(status)
        .header("Content-Type", "application/json; charset=utf-8")
        .header("Access-Control-Allow-Origin", allowed_origin)
        .header("Vary", "Origin")
        .header("Cache-Control", "private, no-store")
        .body(body)?)
}

fn error_response(
    status: StatusCode,
    message: &str,
    allowed_origin: &str,
) -> Result<Response<Body>, Error> {
    response(
        status,
        Body::Text(json!({ "error": message }).to_string()),
        allowed_origin,
    )
}

async fn handler<S: EditorialStore>(
    app: &App<S>,
    request: Request,
) -> Result<Response<Body>, Error> {
    if request.method() != Method::GET {
        return error_response(
            StatusCode::METHOD_NOT_ALLOWED,
            "method not allowed",
            &app.allowed_origin,
        );
    }

    let Some((world_id, entry_id)) = editorial_route(request.uri().path()) else {
        return error_response(StatusCode::NOT_FOUND, "not found", &app.allowed_origin);
    };

    match app.store.entry(world_id, entry_id).await {
        Ok(Some(entry)) => response(
            StatusCode::OK,
            Body::Text(serde_json::to_string(&entry)?),
            &app.allowed_origin,
        ),
        Ok(None) | Err(StoreError::NotFound) => {
            error_response(StatusCode::NOT_FOUND, "not found", &app.allowed_origin)
        }
        Err(StoreError::Backend(cause)) => {
            error!(error = %cause, world_id, entry_id, "editorial data read failed");
            error_response(
                StatusCode::INTERNAL_SERVER_ERROR,
                "editorial data unavailable",
                &app.allowed_origin,
            )
        }
    }
}

pub async fn run_api() -> Result<(), Error> {
    tracing_subscriber::fmt()
        .json()
        .with_env_filter(
            tracing_subscriber::EnvFilter::from_default_env()
                .add_directive("info".parse().expect("info is a valid tracing directive")),
        )
        .without_time()
        .init();

    let bucket = env::var("EDITORIAL_BUCKET").expect("EDITORIAL_BUCKET is required");
    let prefix = env::var("EDITORIAL_PREFIX").unwrap_or_default();
    let allowed_origin =
        env::var("ALLOWED_ORIGIN").unwrap_or_else(|_| DEFAULT_ALLOWED_ORIGIN.to_string());
    let aws_config = aws_config::load_defaults(BehaviorVersion::latest()).await;
    let app = Arc::new(App {
        store: S3EditorialStore {
            client: Client::new(&aws_config),
            bucket,
            prefix,
        },
        allowed_origin,
    });

    run(service_fn(move |request| {
        let app = Arc::clone(&app);
        async move { handler(&app, request).await }
    }))
    .await
}

#[cfg(test)]
mod tests {
    use super::*;

    struct MemoryStore {
        entries: HashMap<(String, String), Value>,
        fails: bool,
    }

    #[async_trait]
    impl EditorialStore for MemoryStore {
        async fn entry(&self, world_id: &str, entry_id: &str) -> Result<Option<Value>, StoreError> {
            if self.fails {
                return Err(StoreError::Backend("test failure".to_string()));
            }
            Ok(self
                .entries
                .get(&(world_id.to_string(), entry_id.to_string()))
                .cloned())
        }
    }

    fn request(method: Method, path: &str) -> Request {
        let mut request = Request::new(Body::Empty);
        *request.method_mut() = method;
        *request.uri_mut() = path.parse().expect("valid URI");
        request
    }

    fn test_app(entries: HashMap<(String, String), Value>) -> App<MemoryStore> {
        App {
            store: MemoryStore {
                entries,
                fails: false,
            },
            allowed_origin: DEFAULT_ALLOWED_ORIGIN.to_string(),
        }
    }

    #[test]
    fn parses_an_editorial_entry_route() {
        assert_eq!(
            editorial_route("/editorial/dry-war/entries/the_old_sixth"),
            Some(("dry-war", "the_old_sixth"))
        );
        assert_eq!(editorial_route("/editorial/../entries/passwd"), None);
    }

    #[tokio::test]
    async fn returns_the_requested_entry() {
        let entries = HashMap::from([(
            ("dry-war".to_string(), "dequindre".to_string()),
            json!({ "id": "dequindre", "questions": [] }),
        )]);
        let response = handler(
            &test_app(entries),
            request(Method::GET, "/editorial/dry-war/entries/dequindre"),
        )
        .await
        .expect("response");

        assert_eq!(response.status(), StatusCode::OK);
        assert_eq!(
            response.headers()["Access-Control-Allow-Origin"],
            DEFAULT_ALLOWED_ORIGIN
        );
        assert!(matches!(response.body(), Body::Text(body) if body.contains("dequindre")));
    }

    #[tokio::test]
    async fn missing_entries_return_not_found() {
        let response = handler(
            &test_app(HashMap::new()),
            request(Method::GET, "/editorial/dry-war/entries/missing"),
        )
        .await
        .expect("response");

        assert_eq!(response.status(), StatusCode::NOT_FOUND);
    }

    #[tokio::test]
    async fn unsupported_methods_return_method_not_allowed() {
        let response = handler(
            &test_app(HashMap::new()),
            request(Method::POST, "/editorial/dry-war/entries/dequindre"),
        )
        .await
        .expect("response");

        assert_eq!(response.status(), StatusCode::METHOD_NOT_ALLOWED);
    }

    #[tokio::test]
    async fn storage_failures_do_not_expose_the_cause() {
        let app = App {
            store: MemoryStore {
                entries: HashMap::new(),
                fails: true,
            },
            allowed_origin: DEFAULT_ALLOWED_ORIGIN.to_string(),
        };
        let response = handler(
            &app,
            request(Method::GET, "/editorial/dry-war/entries/dequindre"),
        )
        .await
        .expect("response");

        assert_eq!(response.status(), StatusCode::INTERNAL_SERVER_ERROR);
        assert!(
            matches!(response.body(), Body::Text(body) if body.contains("unavailable") && !body.contains("test failure"))
        );
    }
}
