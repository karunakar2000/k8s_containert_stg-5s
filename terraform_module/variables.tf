variable "ami_id" {
    type = string
    description = "this is AMI used for creating EC2 instance"
}

variable "instance_type" {
    type = string
    description = "Instance type used for creating type of EC2 Instance"

    validation {
    condition     = contains(["t3.micro", "t3.small", "t3.large"], var.instance_type)
    error_message = "Please select ec2: t3.micro, t3.small or t3.large"
  }
}

variable "sg_ids" {
    type = list  
}

# optional
variable "tags" {
    type = map
    default = {}
}