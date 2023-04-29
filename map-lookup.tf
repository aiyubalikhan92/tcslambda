# // ami-08e2d37b6a0129927
# //us-east-1 = "ami-026b57f3c383c2eec"
# //us-west-2 = "ami-08e2d37b6a0129927"

# resource "aws_vpc" "main" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "main"
#   }
# }

# resource "aws_subnet" "main" {
#   count      = length(var.azs)
#   vpc_id     = aws_vpc.main.id
#   cidr_block = element(var.subnet-cidr, count.index)
#   availability_zone = element(var.azs, count.index)

#   tags = {
#     Name = "Main-${count.index +1}"
#   }
# }

# variable "subnet-cidr" {
#   default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
# }

# variable "azs" {
#   default = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
# }