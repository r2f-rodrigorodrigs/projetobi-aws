resource "aws_subnet" "main_subnet_public_1a" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-SUBNET-PUB-1A"

    }
  )
}

resource "aws_subnet" "main_subnet_public_1b" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-SUBNET-PUB-1B"

    }
  )
}
