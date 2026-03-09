data "grafana_cloud_stack" "s" {
  slug = "cloudcraft"
}

resource "grafana_cloud_access_policy" "k8s_alloy_write" {
  region       = data.grafana_cloud_stack.s.region_slug
  name         = "${local.label}-k8s-service-account"
  display_name = "Access policy for k8s/${local.label} telemetry (Managed by Terraform)"

  scopes = [
    "metrics:read",
    "set:alloy-data-write"
  ]

  realm {
    type       = "stack"
    identifier = data.grafana_cloud_stack.s.id
  }
}

resource "grafana_cloud_access_policy_token" "k8s_alloy_write_token" {
  region           = data.grafana_cloud_stack.s.region_slug
  access_policy_id = grafana_cloud_access_policy.k8s_alloy_write.policy_id
  name             = "${local.label}-k8s-alloy-rw-token"
  display_name     = "k8s alloy service account token"
}
