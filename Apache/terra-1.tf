provider "aws_vpc" {
  region = "eu-west-1"
}

resource "aws_vpc" "my-vpc-terra" {
    cidr_block = 10.100.0.0/16
    instance_tenancy = "default"
  tag {
    name = terraform
    location = UK
  }
}

resource "aws_subnet" "server-vlan" {
  vpc_id = "${aws_vpc.my-vpc-terra.id}"
  cidr_block = 10.100.101.0/24

  tag {
    name = Server-vlan
  }



}
