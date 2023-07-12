# //Create Secondary VPC
# resource "aws_vpc" "mongodb" {
#   provider             = aws.mongodb
#   cidr_block           = "10.0.0.0/16"
#   enable_dns_hostnames = true
#   enable_dns_support   = true
# }

# //Create IGW
# resource "aws_internet_gateway" "mongodb" {
#   provider = aws.mongodb
#   vpc_id   = aws_vpc.mongodb.id
# }

# //Route Table
# resource "aws_route" "mongodb-internet_access" {
#   provider               = aws.mongodb
#   route_table_id         = aws_vpc.mongodb.main_route_table_id
#   destination_cidr_block = "0.0.0.0/0"
#   gateway_id             = aws_internet_gateway.mongodb.id
# }

# //Subnet-A
# resource "aws_subnet" "mongodb-az1" {
#   provider                = aws.mongodb
#   vpc_id                  = aws_vpc.mongodb.id
#   cidr_block              = "10.0.1.0/24"
#   map_public_ip_on_launch = true
#   availability_zone       = "${var.aws_region}a"
# }

# //Subnet-B
# resource "aws_subnet" "mongodb-az2" {
#   provider                = aws.mongodb
#   vpc_id                  = aws_vpc.mongodb.id
#   cidr_block              = "10.0.2.0/24"
#   map_public_ip_on_launch = false
#   availability_zone       = "${var.aws_region}b"
# }

# /*Security-Group
# Ingress - Port 80 -- limited to instance
#           Port 22 -- Open to ssh without limitations
# Egress  - Open to All*/

# resource "aws_security_group" "mongodb_default" {
#   provider    = aws.mongodb
#   name_prefix = "default-"
#   description = "Default security group for all instances in ${aws_vpc.mongodb.id}"
#   vpc_id      = aws_vpc.mongodb.id
#   ingress {
#     from_port = 0
#     to_port   = 0
#     protocol  = "tcp"
#     cidr_blocks = [
#       "0.0.0.0/0",
#     ]
#   }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }
