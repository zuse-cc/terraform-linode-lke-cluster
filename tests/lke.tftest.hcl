mock_provider "linode" {}

mock_provider "infisical" {}

variables {
  stage   = "tst"
  service = "lke-test"
  region  = "eu-central"

  parent_domain = {
    name = "cluster.local"
    id   = 123
  }

  infisical = {
    project_id  = "abc123"
    environment = "tst"
  }
}

run "generates_label" {
  assert {
    condition     = startswith(linode_lke_cluster.k.label, "${var.stage}-${var.service}")
    error_message = "incorrect cluster label"
  }
}

run "set_ip_for_control_plane_acl" {
  variables {
    control_plane_acl = {
      ipv4 = ["1.2.3.4/32"]
    }
  }

  assert {
    condition     = linode_lke_cluster.k.control_plane[0].acl[0].enabled == true
    error_message = "control plane ACL should be enabled"
  }

  assert {
    condition     = contains(linode_lke_cluster.k.control_plane[0].acl[0].addresses[0].ipv4, "1.2.3.4/32")
    error_message = "control plane ACL should allowlist 1.2.3.4/32"
  }
}

run "no_control_plane_acl" {
  variables {
    control_plane_acl = null
  }

  assert {
    condition     = length(linode_lke_cluster.k.control_plane[0].acl) == 0
    error_message = "control plane ACL should not be configured"
  }
}
