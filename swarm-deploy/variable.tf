### variable.tf
variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "eu-west-1"
}
variable "ami" {
  description = "Ubuntu ami"
  ami         = "ami-0c68b55d1c875067e"
}
variable "instance_type" {
  description = "Instance type"
  default = "t2.medium"
}
variable "key_path" {
  description = "SSH Public Key path"
  default = "/path-to-keyfile/petclinic.pem"
}
variable "key_name" {
  description = "Desired name of Keypair..."
  default = "petclinic-key"
}
variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install-docker-compose.sh"
}