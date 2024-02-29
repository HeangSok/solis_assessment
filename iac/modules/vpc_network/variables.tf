variable "env" {
    description = "working environment"
    type = string
}

variable "region" {
  description = "The region to launch"
  type        = string
}

variable "network_name" {
    description = "Your custome network name"
  type = string
}

variable "subnet_name" {
  description = "Associated subnet name"
  type = string
}

variable "subnet_cidr" {
    description = "Ex:0.0.0.0/16"
  type = string
}