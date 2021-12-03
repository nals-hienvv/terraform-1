variable "profile" {
  type    = string
  default = "default"
}

variable "region" {
  type    = string
  default = "us-east-2"
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-074cce78125f09d61"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "key name"
  type        = string
  default     = "test"
}

variable "subnet_id" {
  description = "subnet id"
  type        = string
  default     = "subnet-4d417301"
}




# variable "instance_name" {
#   description = "Value of the Name tag for the EC2 instance"
#   type        = string
#   default     = "api3"
# }
