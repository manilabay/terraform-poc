# terraform-aws-nginx-poc

A simple PoC using Terraform to create 2 AWS EC2 instances running Docker with containerized Nginx servers. It uses default Amazon AMI PV image for us-east-1 region.

To check what recurses will be created:

	$ terraform plan

To create EC2 instances and their dependencies:

	$ terraform apply

To destroy all:

	$ terraform destroy
