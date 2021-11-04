variable "amis" {
    default = {
      "sa-east-1-ubuntu20" = "ami-04a5b8dd2ee07bb23"
      "sa-east-1-ubuntu20" = "ami-ami-04a5b8dd2ee07bb23"
      "sa-east-1-ubuntu20" = "ami-ami-04a5b8dd2ee07bb23"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}