variable "organizational_unit_name" {
  description = "The name of the organizational unit"
  type        = string
}

variable "parent_org_id" {
  description = "The ID of the parent organizational unit."
  type        = string
  default     = ""
}

variable "attached_policies" {
  description = "List of policy IDs to attach to the organizational unit."
  type        = list(string)
  default     = []
}
