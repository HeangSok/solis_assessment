/*====
Common Variables
====*/
variable "env" {
  description = "The environment"
  type        = string
}

variable "region" {
  description = "The region to launch"
  type        = string
}

/*====
Create Cloud Network
====*/
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

/*====
Create Compute Engine
====*/
variable "instance_name" {
  description = "The name of the compute instance"
  type        = string
}

variable "startup_script" {
  type        = string
  default     = ""
}
/*====
Create Cloud Storage
====*/
variable "bucket_name" {
  description = "Unique bucket name"
  type = string
}