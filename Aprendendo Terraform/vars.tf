variable "amis" {
    default = {
      "us:east-1-ubuntu18" = "ami-031dea1a744251b51"
      "us:east-1-ubuntu18" = "ami-031dea1a744251b51"
      "us:east-1-ubuntu18" = "ami-031dea1a744251b51"
    }   
}

variable "instance_type" {
    default = {
        "micro" = "t2.micro"
    }

}