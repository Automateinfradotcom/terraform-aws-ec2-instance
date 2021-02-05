variable "myinstance" {
  type = map(object({
    instance_type               = string
    key_name                    = string
    associate_public_ip_address = bool
    tags                        = map(string)
  }))
}