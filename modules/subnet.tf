resource "aws_subnet" "public-subnet-1" {
vpc_id                  = aws_vpc.myvpc.id
cidr_block              = local.cidr_subnet
availability_zone       = local.availability_zones[0]
map_public_ip_on_launch = true
    tags      = {
        Name    = "public-subnet-omen"
    }
}

resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = local.cidr_all
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route-omen"
  }
}

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
subnet_id           = aws_subnet.public-subnet-1.id
route_table_id      = aws_route_table.route-table.id
}

