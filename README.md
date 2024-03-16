# Terraform Cloud Linode Cluster Module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_lke_cluster.this](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/lke_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | The desired Kubernetes version for this Kubernetes cluster in the format of major.minor (e.g. 1.21), and the latest supported patch version will be deployed. | `string` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | This Kubernetes cluster's unique label. | `string` | n/a | yes |
| <a name="input_pools"></a> [pools](#input\_pools) | The Node Pool specifications for the Kubernetes cluster. At least one Node Pool is required | <pre>list(object({<br>    type  = string<br>    count = number<br>  }))</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | This Kubernetes cluster's location | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_endpoints"></a> [api\_endpoints](#output\_api\_endpoints) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | n/a |
| <a name="output_node_ids"></a> [node\_ids](#output\_node\_ids) | n/a |
| <a name="output_pool"></a> [pool](#output\_pool) | n/a |
| <a name="output_status"></a> [status](#output\_status) | n/a |
<!-- END_TF_DOCS -->