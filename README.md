# OpenText Auto Scaling Group

This project is designed to show the following workflow:
1. Modify Terraform script via VS Code
2. Commit to repository
3. Run Jenkins Pipeline
4. Review Output

The following AWS resources are created via the Terraform script:
1. VPC
2. Internet Gateway
3. Public Subnet
4. Private Subnet
5. Public Route Table
6. Elastic IP
7. Private Route Table
8. Security Group
9. Launch Template
10. Autoscaling Group
11. Application Load Balancer
12. Application Load Balancer Listener

The ALB DNS name is output at the end of the Terraform script so that you can verify whether Apache was installed and configured correctly, and can be accessed via a web browser.

This project is an intermediate example of leveraging the DevOps methodology to deploy infrastructure as code (IaC).
