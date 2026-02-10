output "cluster_id" {
  value = linode_lke_cluster.k.id
}

output "cluster_status" {
  value = linode_lke_cluster.k.status
}

output "kubeconfig" {
  sensitive = true
  value     = linode_lke_cluster.k.kubeconfig
}

output "api_endpoints" {
  value = linode_lke_cluster.k.api_endpoints
}
