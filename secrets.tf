resource "infisical_secret_folder" "cluster" {
  environment_slug = var.infisical.environment
  folder_path      = "/clusters"
  name             = local.label
  project_id       = var.infisical.project_id
}

resource "infisical_secret" "token_secret" {
  name         = "LINODE_TOKEN"
  value        = linode_token.dns_manager.token
  env_slug     = var.infisical.environment
  workspace_id = var.infisical.project_id
  folder_path  = infisical_secret_folder.cluster.path
}
