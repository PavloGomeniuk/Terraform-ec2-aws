resource "aws_vpc" "myvpc" {
  cidr_block = local.cidr_vpc
  tags = {
    Name = "omen-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "vpc-omen-gw"
  }
}

