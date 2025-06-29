variable "ami_id" {
  default = ""
}
variable "instance_type" {
  default = "t3.micro"
}

variable "project" {
  default = "roboshop"
  type    = string
}