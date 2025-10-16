

variable "instances" {
    type = map 
    default = {
        mongodb={
            instance_type="t3.micro"
        }
        redis={
            instance_type="t3.small"
        }
        mysql={
            instance_type="t3.medium"
        }
    }
  
}

variable "domain_name" {
  default = "msgd.fun"
}

variable "zone_id" {
  default = "Z043346914G8XVEOOX7JH"
}