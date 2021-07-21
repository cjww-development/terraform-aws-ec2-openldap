data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "openldap" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.ec2_instance_type

  vpc_security_group_ids = [
    aws_security_group.https_traffic.id,
    aws_security_group.ldap_traffic.id,
    aws_security_group.outbound_traffic.id
  ]

  subnet_id = aws_default_subnet.default_subnet.id

  iam_instance_profile = aws_iam_instance_profile.openldap_instance_profile.name

  user_data = file(var.user_data_file_path)

  monitoring = true

  tags = var.tags
}

resource "aws_eip" "gatekeeper" {
  vpc      = true
  instance = aws_instance.openldap.id
}
