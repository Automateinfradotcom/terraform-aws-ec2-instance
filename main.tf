resource "aws_instance" "web1" {
  ami                         = "ami-0a91cd140a1fc148a"
  for_each                    = var.myinstance
  instance_type               = each.value["instance_type"]
  key_name                    = each.value["key_name"]
  associate_public_ip_address = each.value["associate_public_ip_address"]
  tags                        = each.value["tags"]
}


