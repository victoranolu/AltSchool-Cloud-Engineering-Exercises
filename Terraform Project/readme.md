# AWS Application Load Balancer using Terraform and Ansible

![ architecture diagram of load balancer, EC2 instances and a VPC using Terraform script](/Terraform%20Project/terra.png)

Terraform is an open-source infrastructure as Code tool developed by HashiCorp. It is used to define and provision the complete infrastructure using an easy-to-learn declarative language.

It is an infrastructure provisioning tool where you can store your cloud infrastructure setup as codes. It’s very similar to tools such as CloudFormation, which you would use to automate your AWS infrastructure, but you can only use that on AWS. With Terraform, you can use it on other cloud platforms as well.

# Terraform Core concepts

Below are the core concepts/terminologies used in Terraform:

* Variables: Also used as input-variables, it is key-value pair used by Terraform modules to allow customization.

* Provider: It is a plugin to interact with APIs of service and access its related resources.

* Module: It is a folder with Terraform templates where all the configurations are defined

* State: It consists of cached information about the infrastructure managed by Terraform and the related configurations.

* Resources: It refers to a block of one or more infrastructure objects (compute instances, virtual networks, etc.), which are used in configuring and managing the infrastructure.

* Data Source: It is implemented by providers to return information on external objects to terraform.

* Output Values: These are return values of a terraform module that can be used by other configurations.

* Plan: It is one of the stages where it determines what needs to be created, updated, or destroyed to move from real/current state of the infrastructure to the desired state.

* Apply: It is one of the stages where it applies the changes real/current state of the infrastructure in order to move to the desired state

In this project, `Terraform` is used to spin up the following infrastructure; an AWS Application Load Balancer, a VPC, 3 subnets in different availability zones, an Internet gateway, two different Security Groups (one for ALB and the other for the networked of VPC, EC2 instance), Route Table, 3 EC2 instances in the different availability zones subnets inside a Route 53 hosted zone. 

Inside the 3 EC2 instances is an installed Apache2 application hosting the timezone and a HTML page that identify each instances using `Ansible` configuration manager.

# What You Need

* Terraform installed in your local computer.

* A text IDE for easier use and easy syntax debugging.

* A vagrant machine preferably Linux to run `Ansible` playbook.

* An AWS account.

* and plenty of time. 

The hosted domain running the Application Load Balancer: poormanalfred.me