output "site_url" {
  value = module.frontend.url
}

output "api_url" {
  value = "https://${module.api.hostname}"
}

output "editorial_bucket" {
  value = aws_s3_bucket.editorial.id
}

output "cognito_client_id" {
  value = module.cognito_app.client_id
}
