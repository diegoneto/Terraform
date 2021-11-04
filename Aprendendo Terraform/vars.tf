variable "amis" {
    default = {
      "us-east-1-ubuntu18" = "ami-04a5b8dd2ee07bb23"
      "us-east-1-ubuntu18" = "ami-ami-04a5b8dd2ee07bb23"
      "us-east-1-ubuntu18" = "ami-ami-04a5b8dd2ee07bb23"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}