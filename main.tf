locals {
  name       = "${var.service}-${random_string.s.result}"
  label      = "${var.stage}-${local.name}"
  tags       = ["stage:${var.stage}", "service:${var.service}"]
  fqdn       = "${local.name}.${var.parent_domain.name}"
  kubeconfig = var.k8s_enabled ? yamldecode(base64decode(linode_lke_cluster.k[0].kubeconfig)) : null
}

resource "random_string" "s" {
  length  = 4
  special = false
  upper   = false
}

resource "linode_lke_cluster" "k" {
  count = var.k8s_enabled ? 1 : 0

  label       = local.label
  k8s_version = var.k8s_version
  region      = var.region
  tags        = local.tags

  pool {
    type  = var.worker_pool_type
    count = var.worker_pool_count
  }

  control_plane {
    dynamic "acl" {
      for_each = var.control_plane_acl != null ? [1] : []
      content {
        enabled = true
        addresses {
          ipv4 = var.control_plane_acl.ipv4
          ipv6 = var.control_plane_acl.ipv6
        }
      }
    }
  }
}
