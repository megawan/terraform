provider "aws" {
  region                      = "${var.aws_region}"
  access_key                  = "${var.aws_access_key}"
  secret_key                  = "${var.aws_secret_key}"
}

resource "aws_instance" "test" {
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
    Environment               = "${var.tag_env}"
  }
}
