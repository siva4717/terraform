variable "ami_id"{
    type=string
    default="ami-09c813fb71547fc4f"
}

variable "instance_type"{
    type=string
    default="t3.micro"
}

variable "tags"{
    type=map 
    default = {
        Name="terraform"
        Terraform="true"
        Project="joindevops"
        Environment="Dev"
    }
}

variable "sg" {
    type=string
    default = "allow-all"
    description = "security group name"
  
}

variable "egress_from_port" {
    type = number
    default = 0
  
}

variable "egress_to_port" {
    type = number
    default = 0
  
}
variable "ingress_from_port" {
    type = number
    default = 0
  
}

variable "ingress_to_port" {
    type = number
    default = 0
  
}
variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}
variable "protocol" {
  type = string
  default = "-1"
}