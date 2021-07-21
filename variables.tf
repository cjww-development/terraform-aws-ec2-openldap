variable "region" {
  type        = string
  description = "AWS region the IaC should be deployed into."
}

variable "availability_zone" {
  type        = string
  description = "The AZ that the subnet should be running in."
}
