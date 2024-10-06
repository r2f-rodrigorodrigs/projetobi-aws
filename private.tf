resource "aws_subnet" "main_subnet_private_1a" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone       = "${data.aws_region.current.name}a"
  

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-SUBNET-PRIV-1A"

    }
  )
}

resource "aws_subnet" "main_subnet_private_1b" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone       = "${data.aws_region.current.name}b"
 

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-SUBNET-PRIV-1B"

    }
  )
}
