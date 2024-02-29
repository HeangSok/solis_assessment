variable "env" {
    description = "working environment"
    type = string
}

variable "name" {
  description = "Unique bucket name"
  type = string

  validation {
    condition     = length(var.name) > 0
    error_message = "The bucket name must not be an empty string."
  }
}

variable "location" {
    description = "bucket location"
    type = string
    default = "US"
}

variable "storage_class" {
  description = "Type of bucket"
  type = string
  default = "MULTI_REGIONAL"
}