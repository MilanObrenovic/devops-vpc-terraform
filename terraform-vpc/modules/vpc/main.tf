# VPC
resource "aws_vpc" "my_vpc" {
	cidr_block       = var.vpc_cidr
	instance_tenancy = "default"

	tags = {
		"Name" = "my_vpc"
	}
}

# 2 Subnets
resource "aws_subnet" "subnets" {
	vpc_id            = aws_vpc.my_vpc.id
	cidr_block        = var.subnet_cidr[count.index]
	count             = length(var.subnet_cidr)
	availability_zone = data.aws_availability_zones.available.names[count.index]

	tags = {
		Name = var.subnet_names[count.index]
	}
}

# Internet Gateway

# Route table

# Route table association
