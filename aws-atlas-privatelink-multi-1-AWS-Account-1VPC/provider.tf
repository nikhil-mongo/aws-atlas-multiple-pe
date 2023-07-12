provider "mongodbatlas" {
  public_key  = ""
  private_key = ""
}
provider "aws" {
  alias      = "personal"
  access_key = ""
  secret_key = ""
  region     = "eu-west-2"
}
provider "aws" {
  alias      = "mongodb"
  access_key = ""
  secret_key = ""
  region     = "eu-west-2"
  token = ""
}