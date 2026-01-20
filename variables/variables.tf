variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "HelloWorld"
        Purpose = "Variables-demo"
    }
}