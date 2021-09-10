variable "amis" {
    default = {
      "us-east-1-ubuntu18" = "ami-0c2d06d50ce30b442"
      "us-east-1-ubuntu18" = "ami-0c2d06d50ce30b442"
      "us-east-1-ubuntu18" = "ami-0c2d06d50ce30b442"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}