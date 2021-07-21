variable "region" {
  type        = string
  description = "AWS region the IaC should be deployed into."
}

variable "availability_zone" {
  type        = string
  description = "The AZ that the subnet should be running in."
}

variable "allowed_http_ip_cidr_blocks_inbound" {
  type        = list(string)
  description = "Networks that are allowed to access the ec2 instance via http (port 80)."
}

variable "allowed_ldap_ip_cidr_blocks_inbound" {
  type        = list(string)
  description = "Networks that are allowed to access the ec2 instance via http (port 389)."
}

variable "allowed_outbound_cidr_blocks" {
  type        = list(string)
  description = "Networks that are allowed to be accessed by ec2 instance on outbound connections."
}

variable "tags" {
  type        = map(string)
  description = "Tags associated with resources."
}
