# Application Load Balancer (ALB)
resource "aws_lb" "alb" {
	name               = "application-load-balancer"
	internal           = false
	load_balancer_type = "application"
	subnets            = var.subnets

	security_groups = [
		var.sg_id,
	]
}

# Listener

# Target Group

# Target Group Attachment
