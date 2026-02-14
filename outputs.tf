output "cluster_id" {
  value = linode_lke_cluster.k.id
}

output "cluster_status" {
  value = linode_lke_cluster.k.status
}

output "cluster_name" {
  value = linode_lke_cluster.k.label
}

output "kubeconfig" {
  sensitive = true
  value     = linode_lke_cluster.k.kubeconfig
}

output "api_endpoints" {
  value = linode_lke_cluster.k.api_endpoints
}

output "label" {
  description = "Generated label for the cluster"
  value       = linode_lke_cluster.k.label
}

output "fqdn" {
  value = module.cluster_domain.domain_name
}

output "token" {
  sensitive = true
  value     = linode_token.dns_manager.token
}

output "domain_name" {
  value = module.cluster_domain.domain_name
}

output "domain_id" {
  value = module.cluster_domain.domain_id
}
