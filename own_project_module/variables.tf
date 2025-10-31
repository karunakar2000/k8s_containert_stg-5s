variable "ami_id" {}
variable "instance_type" {}
variable "sg_ids" {}
variable "tags" {
  type = map(string)
}
