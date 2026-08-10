use lambda_http::Error;

#[tokio::main]
async fn main() -> Result<(), Error> {
    editorial_api::run_api().await
}
