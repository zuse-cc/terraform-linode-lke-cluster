locals {
  label = "${var.stage}-${var.service}-${random_string.s.result}"
  tags  = ["stage:${var.stage}", "service:${var.service}"]
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
}
