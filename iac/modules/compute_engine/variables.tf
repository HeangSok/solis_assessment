variable "env" {
  description = "The environment"
  type        = string
}

variable "instance_name" {
  description = "The name of the compute instance"
  type        = string
}

variable "machine_type" {
  type        = string
  default = "e2-medium"
}

variable "zone" {
  type        = string
  default = "us-central1-c"
}

variable "image" {
  type        = string
  default = "debian-cloud/debian-9"

}

variable "network_id" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "startup_script" {
  type        = string
  default     = ""
}

variable "tags" {
  type        = list(string)
  default     = ["web"]
}
