### main.tf
# Specify the provider and access details
provider "aws" {
  access_key = "AKIA2CRYXKJW6RAJ3Z2O"
  secret_key = "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"
  region = "${var.aws_region}"
}
resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags {
    Name  = "master"
  }
}
resource "aws_instance" "worker1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags {
    Name  = "worker 1"
  }
}
resource "aws_instance" "worker2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${var.bootstrap_path}")}"
  vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
tags {
    Name  = "worker 2"
  }
}