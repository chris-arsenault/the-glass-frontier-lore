data "aws_iam_policy_document" "editorial_api" {
  statement {
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.editorial.arn}/${local.editorial_prefix}/worlds/*"]
  }
}

module "api" {
  source = "git::https://github.com/chris-arsenault/ahara-tf-patterns.git//modules/alb-api"

  prefix    = local.prefix
  hostname  = local.api_hostname
  zone_name = local.zone_name
  vpc       = module.ctx.vpc
  alb       = module.ctx.alb
  cognito   = module.ctx.cognito

  iam_policy = [data.aws_iam_policy_document.editorial_api.json]

  lambdas = {
    editorial-api = {
      binary = "${path.module}/../../backend/target/lambda/editorial-api/bootstrap"
      routes = [
        {
          priority      = 350
          paths         = ["/editorial/*"]
          methods       = ["GET"]
          authenticated = true
        }
      ]
      environment = {
        ALLOWED_ORIGIN   = "https://${local.site_hostname}"
        EDITORIAL_BUCKET = aws_s3_bucket.editorial.id
        EDITORIAL_PREFIX = local.editorial_prefix
      }
      tracing_mode = "Active"
    }
  }
}
