terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "5.20.0"
		}
	}

	backend "s3" {
		bucket = "terraform-remote-backend-s3"
		key    = "dev/terraform.tfstate"
		region = "eu-central-1"
	}
}
