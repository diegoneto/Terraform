variable "amis" {
    default = {
      "us-east-1-ubuntu18" = "ami-07983613af1a3ef44"
      "us-east-1-ubuntu18" = "ami-07983613af1a3ef44"
      "us-east-1-ubuntu18" = "ami-07983613af1a3ef44"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}