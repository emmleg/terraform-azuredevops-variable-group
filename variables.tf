variable "project_id" {
  description = "(Required) The ID of the project."
  type        = string
}

variable "name" {
  description = "(Required) The name of the Variable Group."
  type        = string
}

variable "allow_access" {
  description = "(Required) Boolean that indicate if this variable group is shared by all pipelines of this project."
  default     = false
}

variable "variables" {
  description = "(Required) List of objects for each variable block."
  type = list(object({
    name         = string
    value        = optional(string)
    is_secret    = optional(bool)
    secret_value = optional(string)
  }))
}

variable "description" {
  description = "(Optional) The description of the Variable Group."
  default     = "Deployed by Terraform"
}

variable "key_vault" {
  description = "(Optional) Key Vault object to link variable group to a Key Vault using service connection/endpoint."
  type = object({
    name                = string
    service_endpoint_id = string
    search_depth        = optional(number, 30)
  })
  default = null
}
