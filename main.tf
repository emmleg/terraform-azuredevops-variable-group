resource "azuredevops_variable_group" "var_group" {
  project_id   = var.project_id
  name         = var.name
  description  = var.description
  allow_access = var.allow_access

  dynamic "key_vault" {
    for_each = var.key_vault == null ? [] : ["enabled"]
    content {
      name                = var.key_vault.name
      service_endpoint_id = var.key_vault.service_endpoint_id
      search_depth        = var.key_vault.search_depth
    }
  }

  dynamic "variable" {
    for_each = var.variables
    content {
      name         = variable.value.name
      value        = variable.value.value
      is_secret    = variable.value.is_secret
      secret_value = variable.value.secret_value
    }
  }
}
