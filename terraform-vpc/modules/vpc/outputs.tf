output "vpc_id" {
	value = aws_vpc.my_vpc.id
}

output "subnet_ids" {
	# Star takes ALL the subnets in this resource and creates a list
	value = aws_subnet.subnets.*.id
}
