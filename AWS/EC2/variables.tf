/* put variables here */

variable "aws_region" {
  description = "AWS Region"
  default = " us-east-1"
}

variable "aws_access_key" {

}

variable "aws_secret_key" {

}

variable "instance_name" {
  description = ""
  default     = ""
}

/* variable "aws_amis" {
 * description = ""
 * default = ""
 * type = "string"
}
*/

variable "instance_type" {
  description = ""
  default = "t2.micro"
}

variable "key_name" {
  description = ""
  default = ""
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
  default = [ "sg-774a6810" ]
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
  default = ""
}

variable "tag_env" {
  description = ""
  default = ""
}
