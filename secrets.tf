data "infisical_identity_details" "current" {}

resource "infisical_secret_folder" "cluster" {
  environment_slug = var.infisical.environment
  folder_path      = "/clusters"
  name             = local.label
  project_id       = var.infisical.project_id
}

resource "infisical_secret" "token_secret" {
  name         = "external-dns"
  value        = jsonencode({ LINODE_TOKEN : linode_token.dns_manager.token })
  env_slug     = var.infisical.environment
  workspace_id = var.infisical.project_id
  folder_path  = infisical_secret_folder.cluster.path
}

resource "infisical_secret" "gcloud_secret" {
  name         = "grafana-credentials"
  value        = <<-EOF
  {
    "GCLOUD_K8S_RW_TOKEN": "${grafana_cloud_access_policy_token.k8s_alloy_write_token.token}",
    "GCLOUD_HOSTED_LOGS_ID": "${data.grafana_cloud_stack.s.logs_user_id}",
    "GCLOUD_HOSTED_METRICS_ID": "${data.grafana_cloud_stack.s.prometheus_user_id}"
  }
  EOF
  env_slug     = var.infisical.environment
  workspace_id = var.infisical.project_id
  folder_path  = infisical_secret_folder.cluster.path
}

module "infisical_id" {
  source  = "https://github.com/zuse-cc/terraform-infisical-machine-id/releases/download/v0.2.0-beta/terraform-infisical-machine-id.tar.gz"
  stage   = "dev"
  service = "${local.name}-esm"
  org_id  = data.infisical_identity_details.current.organization.id

  projects = [
    {
      id   = var.infisical.project_id,
      role = "viewer"
    }
  ]
}
