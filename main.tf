locals {
  name  = "${var.service}-${random_string.s.result}"
  label = "${var.stage}-${local.name}"
  tags  = ["stage:${var.stage}", "service:${var.service}"]
  fqdn  = "${local.name}.${var.parent_domain}"
}

resource "random_string" "s" {
  length  = 4
  special = false
  upper   = false
}

resource "linode_lke_cluster" "k" {
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
