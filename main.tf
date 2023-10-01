provider "aws" {
        region = "ap-southeast-1"
}

terraform {
        backend "s3" {
               bucket = "tf-test1-bucket"
               key = "terrafrom.tfstate"
               region = "ap-southeast-1"
        }
}

resource "aws_instance" "tf_new_inst" {
        subnet_id = "subnet-02baa8d1f25c28d2d"
        ami = "ami-0df7a207adb9748c7"
        instance_type = "t2.micro"
        tags = {
               Name = "tf_new_inst"
               Env = "new_dev_inst"
        }
}
