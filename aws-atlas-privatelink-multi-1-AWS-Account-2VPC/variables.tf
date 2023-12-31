# variable "public_key" {
#   description = "The public API key for MongoDB Atlas"
# }
# variable "private_key" {
#   description = "The private API key for MongoDB Atlas"
# }
variable "atlasprojectid" {
  description = "Atlas Project ID"
  default = ""
}
# variable "access_key" {
#   description = "The access key for AWS Account"
# }
# variable "secret_key" {
#   description = "The secret key for AWS Account"
# }
variable "atlas_region" {
  default     = "EU_WEST_2"
  description = "Atlas Region"
}
variable "aws_region" {
  default     = "eu-west-2"
  description = "AWS Region"
}
# variable "aws_account_id" {
#   description = "My AWS Account ID"
# }
variable "atlas_vpc_cidr" {
  description = "Atlas CIDR"
  default = "192.168.240.0/21"
}
