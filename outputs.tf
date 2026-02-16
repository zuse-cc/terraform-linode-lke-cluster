output "cluster_id" {
  value = var.k8s_enabled ? linode_lke_cluster.k[0].id : null
}

output "cluster_status" {
  value = var.k8s_enabled ? linode_lke_cluster.k[0].status : null
}

output "cluster_name" {
  value = var.k8s_enabled ? linode_lke_cluster.k[0].label : null
}

output "kubeconfig" {
  sensitive = true
  value     = var.k8s_enabled ? linode_lke_cluster.k[0].kubeconfig : null
}

output "api_endpoints" {
  value = var.k8s_enabled ? linode_lke_cluster.k[0].api_endpoints : null
}

output "label" {
  description = "Generated label for the cluster"
  value       = var.k8s_enabled ? linode_lke_cluster.k[0].label : null
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

output "infisical_secrets_path" {
  value = infisical_secret_folder.cluster.path
}

output "infisical_auth" {
  sensitive = true
  value = {
    client_id     = module.infisical_id.client_id
    client_secret = module.infisical_id.client_secret
  }
}

output "kubernetes" {
  description = "Kubernetes connection details"

  value = var.k8s_enabled ? {
    host       = local.kubeconfig.clusters[0].cluster.server
    token      = local.kubeconfig.users[0].user.token
    cluster_ca = base64decode(local.kubeconfig.clusters[0].cluster.certificate-authority-data)
  } : null
}
