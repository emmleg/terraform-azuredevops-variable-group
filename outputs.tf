output "id" {
  value       = azuredevops_variable_group.var_group.id
  description = "The ID of the Variable Group returned after creation in Azure DevOps."
}

output "name" {
  value       = azuredevops_variable_group.var_group.name
  description = "The name of the Variable Group returned after creation in Azure DevOps."
}
