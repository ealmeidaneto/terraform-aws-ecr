variable repo_name {
  type        = string
  description = "(Required) Name of the repository."
}

variable image_tag_mutability {
  type        = string
  default     = "MUTABLE"
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE."
}

variable tags {
  type        = map(string)
  default     = {}
  description = "(Optional) A map of tags to assign to the resource."
}

variable scan_image_on_push {
  type        = bool
  default     = true
  description = "(Optional) Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered."
}

variable encryption_configuration {
  type        = list(map(any))
  default     = []
  description = "(Optional) Encryption configuration for the repository."
}

variable repository_policy {
  type        = string
  default     = ""
  description = "(Required) The policy document. This is a JSON formatted string."
}

variable lifecycle_policy {
  type        = string
  default     = ""
  description = "(Required) The policy document. This is a JSON formatted string. See more details about Policy Parameters in the official AWS docs. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide(https://learn.hashicorp.com/terraform/aws/iam-policy)."
}
