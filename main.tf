terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.16.0"
    }
  }
}

resource "linode_lke_cluster" "this" {
  k8s_version = var.k8s_version
  label       = var.label
  region      = var.region

  dynamic "pool" {
    for_each = var.pools
    content {
      type  = pool.value["type"]
      count = pool.value["count"]
    }
  }
}
