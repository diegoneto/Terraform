variable "amis" {
    default = {
      "us-east-1-ubuntu18" = "ami-09b9b17384f68fd7c"
      "us-east-1-ubuntu18" = "ami-09b9b17384f68fd7c"
      "us-east-1-ubuntu18" = "ami-09b9b17384f68fd7c"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}