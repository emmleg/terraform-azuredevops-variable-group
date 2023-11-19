<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >=0.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >=0.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuredevops_variable_group.var_group](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/variable_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_access"></a> [allow\_access](#input\_allow\_access) | (Required) Boolean that indicate if this variable group is shared by all pipelines of this project. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the Variable Group. | `string` | `"Deployed by Terraform"` | no |
| <a name="input_key_vault"></a> [key\_vault](#input\_key\_vault) | (Optional) Key Vault object to link variable group to a Key Vault using service connection/endpoint. | <pre>object({<br>    name                = string<br>    service_endpoint_id = string<br>    search_depth        = optional(number, 30)<br>  })</pre> | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the Variable Group. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | (Required) The ID of the project. | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | (Required) List of objects for each variable block. | <pre>list(object({<br>    name         = string<br>    value        = optional(string)<br>    is_secret    = optional(bool)<br>    secret_value = optional(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Variable Group returned after creation in Azure DevOps. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Variable Group returned after creation in Azure DevOps. |
<!-- END_TF_DOCS -->