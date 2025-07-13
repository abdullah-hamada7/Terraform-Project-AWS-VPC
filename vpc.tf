resource "aws_vpc" "myvpc" {
  cidr_block         = var.cidr
  enable_dns_support = false

  provisioner "local-exec" {
    command = "touch vpc-${self.id}" # created only at the 1st time
  }

  tags = {
    Name = "my-vpc"
  }
}
