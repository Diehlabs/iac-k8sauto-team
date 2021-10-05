variable "GITHUB_TOKEN" {
  description = "The Github PAT"
  type        = string
  sensitive   = true
  default     = null
}

variable "tf_version" {
  description = "Version of Terraform to use"
  type        = string
  default     = "1.0.8"
}
