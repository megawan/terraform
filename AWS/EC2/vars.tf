/* put variables here */

variable "aws_region" {
  description = "AWS Region"
  default = "us-east-1"
}


variable "aws_access_key" {
  
}

variable "aws_secret_key" {
  
}

variable "aws_amis" {
  description = ""
  default = "ami-97785bed"
  type = "string"
}

variable "instance_type" {
  description = ""
  default = "t2.micro"
}

variable "key_name" {
  description = ""
  default = "sysadmin"
}

variable "public_ip" {
  description = ""
  default = false
}

variable "subnet_id" {
  description = ""
  default = ""
}

variable "security_group_id" {
  description = ""
  default = [ "sg-38045071" ]
  type = "list"
}

variable "root_block_device_vol_size"  {
  description = ""
  default = 10
}

variable "root_block_device_vol_type" {
  description = ""
  default = "gp2"
}

variable "tag_name" {
  description = ""
  default = "gika-01.spaceman.id"
}

variable "tag_env" {
  description = ""
  default = "development"
}
