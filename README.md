# DevOps + VPC + Terraform

This repository demonstrates a basic example of creating a Virtual Private Cloud (VPC) infrastructure using Terraform,
and then automating the deployment using GitHub Actions.

# 1. Virtual Private Cloud (VPC)

![land.svg](misc/land.svg)

- Imagine as if you're building a house.
- You first need to allocate a particular land (area) to build the house on, because you can't just go anywhere and
	build the house on however many lands you want.
- After you allocate an area, then you start creating your house, garden, guest rooms, etc. within that area (allocated
	space).

![aws-cloud-vpc.svg](misc/aws-cloud-vpc.svg)

- Similarly in AWS Cloud, if you want to create a particular project with specific requirements, with particular address
	range for that particular project, you use a VPC.
- VPC is a logically isolated network space (land) for us to work on.
- You can create multiple VPCs in a single cloud within a region.
- In a VPC you have full control of whatever you do.
- You also assign a specific IP address range, also known as CIDR (Classless Inter-Domain Range).
- Within CIDR, you allocate particular resources.
- Example:
	- **VPC 1:**
		- CIDR -> 10.0.0.0/16
	- **VPC 2:**
		- CIDR -> 20.0.0.0/16

## 1.1. Subnets

![subnets.svg](misc/subnets.svg)

- Subnets (sub-net, sub which stands for **division** and net which stands for **network**) is a division of Networks in
	a VPC.
- Some applications may not require direct internet access.
- For example, if we want to create a database, we don't need this database to be accessed publicly, it needs to be in a
	private subnet.
- On the contrary, if we have a frontend application, it has to be in the public subnet, so it can be accessed by
	everyone.
- This can be done because you are not using the whole VPC, you are only using a **small** IP address range.
- A VPC belongs to a **Region**, while a Subnet belongs to **Availability Zone**.
