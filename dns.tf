module "cluster_domain" {
  source  = "https://github.com/zuse-cc/terraform-linode-domain/releases/download/v0.1.0-rc1/terraform-linode-domain.tar.gz"
  env     = var.stage
  service = var.service
  tld     = local.fqdn

  parent = {
    domain_id = var.parent_domain.id
  }
}

resource "linode_token" "dns_manager" {
  label  = "${local.label}-k8s"
  scopes = "domains:read_write"
}
