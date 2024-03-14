output "kubeconfig" {
  value     = linode_lke_cluster.this.kubeconfig
  sensitive = true
}

output "api_endpoints" {
  value = linode_lke_cluster.this.api_endpoints
}

output "status" {
  value = linode_lke_cluster.this.status
}

output "id" {
  value = linode_lke_cluster.this.id
}

output "pool" {
  value = linode_lke_cluster.this.pool
}

output "node_ids" {
  value = [for i in linode_lke_cluster.this.pool[0].nodes : i.instance_id]
}
