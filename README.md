# terraform-aws-ec2-openldap

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_subnet.default_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_subnet) | resource |
| [aws_eip.gatekeeper](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_iam_instance_profile.openldap_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.openldap_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_instance.openldap](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.https_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.ldap_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.outbound_traffic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_iam_policy_document.openldap_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_http_ip_cidr_blocks_inbound"></a> [allowed\_http\_ip\_cidr\_blocks\_inbound](#input\_allowed\_http\_ip\_cidr\_blocks\_inbound) | Networks that are allowed to access the ec2 instance via http (port 80). | `list(string)` | n/a | yes |
| <a name="input_allowed_ldap_ip_cidr_blocks_inbound"></a> [allowed\_ldap\_ip\_cidr\_blocks\_inbound](#input\_allowed\_ldap\_ip\_cidr\_blocks\_inbound) | Networks that are allowed to access the ec2 instance via http (port 389). | `list(string)` | n/a | yes |
| <a name="input_allowed_outbound_cidr_blocks"></a> [allowed\_outbound\_cidr\_blocks](#input\_allowed\_outbound\_cidr\_blocks) | Networks that are allowed tobe accessed by ec2 instance on outbound connections. | `list(string)` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The AZ that the subnet should be running in. | `string` | n/a | yes |
| <a name="input_ec2_instance_type"></a> [ec2\_instance\_type](#input\_ec2\_instance\_type) | What instance type ec2 should adopt. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region the IaC should be deployed into. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags associated with resources. | `map(string)` | n/a | yes |
| <a name="input_user_data_file_path"></a> [user\_data\_file\_path](#input\_user\_data\_file\_path) | File path to EC2 user data file | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
