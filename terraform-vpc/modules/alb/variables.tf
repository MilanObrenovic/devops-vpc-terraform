variable "sg_id" {
	description = "Security Group ID for Application Load Balancer."
	type        = string
}

variable "subnets" {
	description = "Subnets for ALB."
	type        = list(string)
}
