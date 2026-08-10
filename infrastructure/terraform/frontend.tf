module "frontend" {
  source = "git::https://github.com/chris-arsenault/ahara-tf-patterns.git//modules/website"

  prefix         = local.prefix
  hostname       = local.site_hostname
  zone_name      = local.zone_name
  site_directory = "${path.module}/../../apps/web/dist"
  encrypt        = false

  static_asset_path_patterns = [
    "manifest.json",
    "worlds/*",
  ]

  vpc         = module.ctx.vpc
  og_artifact = module.ctx.og_server

  og_config = {
    site_name = "Tsonu Canon"
    defaults = {
      title       = "Tsonu Canon"
      description = "World lore, chronology, connections, and editorial history."
      image       = "/og/tsonu-canon.png"
    }
    manifest_key = "opengraph.json"
  }

  runtime_config = {
    editorialApiUrl = "https://${local.api_hostname}"
    auth = {
      domain   = module.ctx.cognito.domain
      clientId = module.cognito_app.client_id
    }
  }
}
