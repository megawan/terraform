/*
 * Be sure to fill in the variable
 * This file is intended to load the variable from variables.tf file
*/

/*
 * Specify the provider
*/

provider "aws" {
  region                      = "${var.aws_region}"
  access_id                   = ""
  secret_key                  = ""
}

resource aws_instance "${var.instance_name}" {
  ami                         = "${var.aws_amis}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "${var.public_ip}"
  ebs_optimized               = false
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = ["${var.security_group_id}"]
  root_block_device {
    delete_on_termination     = true
    volume_size               = "${var.root_block_device_vol_size}"
    volume_type               = "${var.root_block_device_vol_type}"
  }
  tags {
    Name                      = "${var.tag_name}"
    Type                      = "${var.tag_type}"
    Environment               = "${var.tag_env}"
  }
}
