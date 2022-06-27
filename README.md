# Terraform-ec2-aws
Infrastructure as a code for ec2 instance om AWS

# Description 

1. VPC
2. Internet gateway
2. Subnet
3. Security Group
4. EC2

# Code features:
1. Used assume_role
2. S3 for saving tfstate file
3. DynamoDb for saving lock files
4. Provisioner "remote-exec" for installing nginx
5. Finding ami via "amazon data"

# For running
1. terraform init
2. terraform plan
3. terraform apply -auto-approve
