variable "instances" {
    type = list 
    default = ["mongodb","user","cart","redis","catalogue","rabbitmq","shipping","payment","mysql","frontend"]
  
}
variable "zone_id" {
    type = string
    default = ""
  
}
variable "domain_name" {
    type = string
    default = "msgd.fun"
  
}