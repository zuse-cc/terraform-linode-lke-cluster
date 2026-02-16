mock_provider "linode" {
  mock_resource "linode_lke_cluster" {
    defaults = {
      kubeconfig = "CmFwaVZlcnNpb246IHYxCmtpbmQ6IENvbmZpZwpwcmVmZXJlbmNlczoge30KCmNsdXN0ZXJzOgotIGNsdXN0ZXI6CiAgICBjZXJ0aWZpY2F0ZS1hdXRob3JpdHktZGF0YTogTFMwdExTMUNSVWRKVGlCRFJWSlVTVVpKUTBGVVJTMHRMUzB0Q2sxSlNVUkNWRU5EUVdVeVowRjNTVUpCWjBsSlpraG5RamxLV2tsb09GbDNSRkZaU2t0dldrbG9kbU5PUVZGRlRFSlJRWGRHVkVWVVRVSkZSMEV4VlVVS1FYaE5TMkV6Vm1sYVdFcDFXbGhTYkdONlFXVkdkekI1VG1wQmVVMVVXWGxOUkVVMFRXcGtZVVozTUhwT2FrRjVUVlJSZVUxRVNYcE5hbVJoVFVKVmVBcEZla0ZTUW1kT1ZrSkJUVlJEYlhReFdXMVdlV0p0VmpCYVdFMTNaMmRGYVUxQk1FZERVM0ZIVTBsaU0wUlJSVUpCVVZWQlFUUkpRa1IzUVhkblowVkxDa0Z2U1VKQlVVTXZkVFpyU2sxQldtMHpkVGRFUjBoMFlUbDZWMmxNWm5GNE9GYzJXbkJPZW5kMlFteHFNVkJRV0cxbmFsSXdUM04wZW1rM2QyVldaRGNLWWtzNFlUWnBLMGR2V25NMWExQkthMU54YW5GQlpYUTBWREE1V0dSaU5EbG9aVkUzZUZWNFNETmhkbU5OZDJjd2FHOWpaSEYwTldsdWJrVlBkMnBOZGdveU1GcDZhVFUwZFhGaWJTdFlUalp0ZGxGUWNHTlJXWEpRUXpsbE4wczVXR3hFUlcxd05uSm5VVE5hZG0xS2JHZE9OalpFVnpkSmIwVldiR3BMVmtRM0NqRlVTSEowY1hKQ05tUTJZWFEyZFUxemJHdHBiekpOWkV3dlFUVm9TVXh5T0cxVlMzVmFWMkUxZFRaNVNIaG1NSGxTWWpBMVRuTlJkVnBSZGtKcVVXY0tTVGxyYjI1bmRXUkhiWEJ4TlZkQ1REazJTRXBhYkRGR1VWZGhha0ZpZEdNNWVIcHRjbUppZG1zNFZXcHlOa3RzY0hSNVdGbFNOVkJ1ZGxneFowOXJTUW9yTURRNE1ucEVRM2RMUzJJNWRXaHFjRGhwUVZaR1RIWndja3AwUVdkTlFrRkJSMnBYVkVKWVRVRTBSMEV4VldSRWQwVkNMM2RSUlVGM1NVTndSRUZRQ2tKblRsWklVazFDUVdZNFJVSlVRVVJCVVVndlRVSXdSMEV4VldSRVoxRlhRa0pSYkV4eWRVSjBhRTh6Y0dacVNGcFRORFV3YW1ScVExWlpTM2xVUVZZS1FtZE9Wa2hTUlVWRWFrRk5aMmR3Y21SWFNteGpiVFZzWkVkV2VrMUJNRWREVTNGSFUwbGlNMFJSUlVKRGQxVkJRVFJKUWtGUlFYcFVTalppY1hCc2F3cEVkR2QyT1ZwRFZURmhVMHRSYkd0cVFXcFpTRkJFY2xCSmNFaEJPVGxRTm1GcFRHSlFabUpSZVZGeFMxTkNORTE2TlVaMmJua3ZabmQ2YjBSRWRTOTNDbXRLV2xGSFoydFROMkZtYkZkSk1raGFkU3RDYzJGM1ZrUXZVWEEyYkdaVEwyZzFMMUUwVG1VelRYaGtMM2h5ZHpWeGJWZG9UbnBHTmtZelVWUkhhMDhLZEV4c1EwMWtlVmQ2YlRkWFpHVjNZM05JUm1OWVdVZHJiMFJVTTJKV1JYQXJhM2xzZDI5bU5FVnFUazUyV21sbWRFdERTWFJHTm00dmEyRnNSSGh1YmdvM2VHUjJVM0U1YzBaQlMxQnlOV1YxTlhwaVVtUlBPWGRVZURSa1EyaFJNWEJJTHpOT1lVNXZjWFZUWjIxamVYUndlWFpRWWtrck16VTRSSFJhTlU1S0NqVXJkWGxGSzNKSFFXRXdVWFpvZFRGWWNqZDVNVVo1UTI5UWNWVlJOREF2VVc5bEx6QlNhMVkwUkhkaU4yNUlXWGRsYjNjMlJYbENkVk0xV0VwMWNGQUtORTFGZUVseFNGaGthVnB6Q2kwdExTMHRSVTVFSUVORlVsUkpSa2xEUVZSRkxTMHRMUzBLCiAgICBzZXJ2ZXI6IGh0dHBzOi8vNzE4YTZiMGQtM2E2ZS00ZjlkLWE2MDEtZjgyNDk3NThjNDkwLmV1LWNlbnRyYWwtMy1ndy5saW5vZGVsa2UubmV0OjQ0MwogIG5hbWU6IGxrZTU2OTExNgoKdXNlcnM6Ci0gbmFtZTogbGtlNTY5MTE2LWFkbWluCiAgdXNlcjoKICAgIGFzLXVzZXItZXh0cmE6IHt9CiAgICB0b2tlbjogZXlKaGJHY2lPaUpTVXpJMU5pSXNJbXRwWkNJNklsRkJSRWd4UldReVZGZDBNMjh5Y3pOVldUWTJWSEJzU0hkVFZVUTNhMlZYYUdNMmJFaFBWa1ZUUVdNaWZRLmV5SnBjM01pT2lKcmRXSmxjbTVsZEdWekwzTmxjblpwWTJWaFkyTnZkVzUwSWl3aWEzVmlaWEp1WlhSbGN5NXBieTl6WlhKMmFXTmxZV05qYjNWdWRDOXVZVzFsYzNCaFkyVWlPaUpyZFdKbExYTjVjM1JsYlNJc0ltdDFZbVZ5Ym1WMFpYTXVhVzh2YzJWeWRtbGpaV0ZqWTI5MWJuUXZjMlZqY21WMExtNWhiV1VpT2lKc2EyVXRZV1J0YVc0dGRHOXJaVzR0WXpoemRuTWlMQ0pyZFdKbGNtNWxkR1Z6TG1sdkwzTmxjblpwWTJWaFkyTnZkVzUwTDNObGNuWnBZMlV0WVdOamIzVnVkQzV1WVcxbElqb2liR3RsTFdGa2JXbHVJaXdpYTNWaVpYSnVaWFJsY3k1cGJ5OXpaWEoyYVdObFlXTmpiM1Z1ZEM5elpYSjJhV05sTFdGalkyOTFiblF1ZFdsa0lqb2lZek00WlRFd05UQXRaamN4TXkwME0yRXpMVGd5TWpRdE1ERTBNamxsTWpZNFpUVTRJaXdpYzNWaUlqb2ljM2x6ZEdWdE9uTmxjblpwWTJWaFkyTnZkVzUwT210MVltVXRjM2x6ZEdWdE9teHJaUzFoWkcxcGJpSjkuWGJfWU40Wk11V1FtSUNVRG14WkJyOXgwWEpyWWFyN0tSWUJfTXVQak15OHRuM1hYZ0xtaE9Ubkh4b2RKay1yMG5fdVYwQjhJa2o1YlJnRnpNR2diR0xoNkJYeUQ3d3UzcWctYVY5VUhrM21vZlJoU0ZHTm5wRHc5MVVNZGhtX2szd0FUc0NMYWw4MHpiVVdraWxSZ2U4YTF3d2xuYmJ3T05LVHFtd0lzeEFnUFJocF9fQlNQdmpCaDdvNnUxWU5nTng3Z1pYbUIxVVhsWE1ZVWZGSnlTcTFhLXRBVWZpZHlMU3ZGVUVFd2N1Uk16SHUxNUFra3dBM05zeGt2eXFiSk9mV0dHaUJfNlh0NERscmFYYnFTbTBPbV9IMUtSNkxMWnV0X3NWRnJDMFFtUkdVS1JPNmlCSWdtSzRia0pWN3VaLUo5Ty1iYk41VjhhS29vbC0yb3h3Cgpjb250ZXh0czoKLSBjb250ZXh0OgogICAgY2x1c3RlcjogbGtlNTY5MTE2CiAgICBuYW1lc3BhY2U6IGRlZmF1bHQKICAgIHVzZXI6IGxrZTU2OTExNi1hZG1pbgogIG5hbWU6IGxrZTU2OTExNi1jdHgKCmN1cnJlbnQtY29udGV4dDogbGtlNTY5MTE2LWN0eAo="
    }
  }
}

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
    condition     = startswith(linode_lke_cluster.k[0].label, "${var.stage}-${var.service}")
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
    condition     = linode_lke_cluster.k[0].control_plane[0].acl[0].enabled == true
    error_message = "control plane ACL should be enabled"
  }

  assert {
    condition     = contains(linode_lke_cluster.k[0].control_plane[0].acl[0].addresses[0].ipv4, "1.2.3.4/32")
    error_message = "control plane ACL should allowlist 1.2.3.4/32"
  }
}

run "no_control_plane_acl" {
  variables {
    control_plane_acl = null
  }

  assert {
    condition     = length(linode_lke_cluster.k[0].control_plane[0].acl) == 0
    error_message = "control plane ACL should not be configured"
  }
}

run "cluster_disabled" {
  variables {
    k8s_enabled = false
  }

  assert {
    condition     = length(linode_lke_cluster.k) == 0
    error_message = "cluster should not be created when k8s_enabled is false"
  }
}
