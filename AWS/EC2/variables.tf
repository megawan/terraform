/*
 * AWS Credentials
*/

variable "aws_region" {
  description = "AWS Region"
  default = "ap-southeast-1"
}

variable "aws_access_key" {

}

variable "aws_secret_key" {

}

/*
 * Kudo Development EC2 Instances Variable
*/

variable "instance_name" {
  description = "The Instances name"
  default     = "test.kudoplay.net"
}

variable "aws_amis" {
  description = "Default AMI To use"
  /* Don't change this configuration unless you need custom AMI */
  default = "ami-7998ef1a"
  type = "string"
}

variable "instance_type" {
  description = "Default Instance Type"
  /* Probably we always use t2.micro on development */
  default = "t2.micro"
}

variable "key_name" {
  description = "Default Key Name"
  /* Don't change this configuration */
  default = "admin"
}

variable "public_ip" {
  description = "Are this instance use Public IP ?"
  default = false
}

variable "subnet_id" {
  description = "Default Subnet ID For Development"
  /* Don't change this configuration */
  default = "subnet-64c7eb12"
}

variable "security_group_id" {
  description = "Security Group to be used"
  /* Change the value respectedly by your need
   * Please note the default is Kudo Utility
  */
  default = [ "sg-774a6810" ]
  type = "list"
}

variable "root_block_device_vol_size"  {
  description = "Root Block Device Size"
  /* Default for 10 GB for OS */
  default = 10
}

variable "root_block_device_vol_type" {
  description = "Root Block Device Type"
  /* Almost every instance will use gp2 except for database */
  default = "gp2"
}

variable "tag_name" {
  description = "Tag Name"
  /* Change this to easily named your instance */
  default = "test.kudoplay.net"
}

variable "tag_type" {
  description = "Tag Type"
  /* Change this for your instance server type */
  default = "web"
}

variable "tag_env" {
  description = "Default Environment For Development"
  /* Don't change this configuration */
  default = "Development"
}
