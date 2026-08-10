module "cognito_app" {
  source = "git::https://github.com/chris-arsenault/ahara-tf-patterns.git//modules/cognito-app"

  name                = "${local.prefix}-web"
  cognito             = module.ctx.cognito
  public_oauth_client = true
  callback_urls       = ["https://${local.site_hostname}/auth/callback"]
  logout_urls         = ["https://${local.site_hostname}/"]
}
