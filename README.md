# Mattermost Project

In my UT Austin Post-Graduate Cloud Computing course, I was given this project assignment to complete to show my understanding of deploying a 3-tier enterprise web application on AWS using Management Console website. For my presentation, I have decided to use terraform to automate and speed up the completion of this project as it is the most popular Infrastructure-as-as-Code tool used today in most enterprises. Below is a breakdown of the key details of the project. 

## Scenario

You are working at a small enterprise with 50 or less employees. To help development teams across the organization collaborate and communicate effectively while aligning with the company’s security policies, the management team has instructed the IT department to launch Mattermost Team Edition. Mattermost is an open source platform that provides secure collaboration for technical and operational teams that work in environments with complex nation-state level security and trust requirements. Mattermost is built specifically for technical and operational use cases, including software development and engineering workflows, and integrates deeply with a rich ecosystem of third-party developer tools. Mattermost gives companies full control over their data; with self-hosted and private cloud deployment options and access to the source code, developers can contribute directly to a shared, flexible, and extensible platform built just for them. With Mattermost Team Edition, the free open-source version, organizations get to enjoy the following benefits:-

-	Teams and channels for one-to-one and group messaging, file sharing, and unlimited search history with threaded messaging, emoji, and custom emoji.
-	Native apps for iOS, Android, Windows, macOS, and Linux.
-	Pre-packaged integrations with most common developer tools, including Jira, Confluence, GitHub, GitLab, CircleCI, Zoom, Jitsi, and more.

For more information, checkout the mattermost: https://docs.mattermost.com/about/editions-and-offerings.html
Mattermost website: https://mattermost.com/

## Prerequisites

-	Setup an EC2 instance using the AWS Management Console
-	Install AWS CLI v2
-	Install Terraform

## Project Instructions

1 – Create a custom VPC with a:
a)	Private Subnet Routed to a NAT Gateway.
b)	Public Subnet routed to an Internet Gateway.

2 – Install and Configure a MYSQL database on an EC2 instance running on Ubuntu 22.04 deployed within the Private Subnet and with a security group that has Port 3306 open.


3 –  Install and Configure Mattermost Team Edition on an EC2 instance running on a Ubuntu 22.04 OS deployed within the Public Subnet and with a security group that has Port 8065 open.





## Project Implementation

### Step 1: Launch an EC2 instance

### Step 2: Install AWS CLI v2

To install AWS cli v2, execute the following commands:
	
         $ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

         unzip awscliv2.zip

         sudo ./aws/install

### Step 3: Login to AWS account
	
	aws configure

Enter you AWS Account Access ID, Secret Key, region for deploying your resources, and output type (Recommend: json)

### Step 4: Install Terraform

1 - Ensure that your system is up to date and you have installed the gnupg, software-properties-common, and curl packages installed. You will use these packages to verify HashiCorp's GPG signature and install HashiCorp's Debian package repository.

$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

2 - Install the HashiCorp GPG key.

	wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

3 - Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.

        echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
        https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
        sudo tee /etc/apt/sources.list.d/hashicorp.list

4 – Update all server packages and new Hashicorp repository

        sudo apt update

5 - Install Terraform from the new repository.

        sudo apt-get install terraform

### Step 5: Provision a custom VPC with a Private Subnet routed to a Nat Gateway and a Public Subnet connected to an Internet Gateway using a Terraform module for launching an AWS VPC as well as 2 security groups. For more information: https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest

-	Enter the VPC/ directory
-	Execute the following commands:

        terraform init
        terraform validate
        terraform plan
        terraform apply –auto-approve

### Step 6: Provision EC2 instance for MYSQL database in Private subnet with port 3306 open in the security group running on Ubuntu 22.04.

-	Enter the MYSQL/ directory
-	Execute the following commands:

        terraform init
        terraform validate
        terraform plan
        terraform apply –auto-approve


### Step 7: Provision EC2 instance for MYSQL database in Private subnet with Port 8065 open in the security group running on Ubuntu 22.04.

-	Enter the Mattermost/ directory
-	Execute the following commands:

        terraform init
        terraform validate
        terraform plan
        terraform apply –auto-approve

### Step 8: Test Mattermost Team Edition Website deployment on browser.
![image](https://github.com/Ohubabs/Mattermost-EC2/assets/68171102/25c19d91-f418-4c48-a190-0c311cd27f17)



 
![image](https://github.com/Konoha-23/konoha_mattermost/assets/68171102/dee6d843-26a6-454a-a93a-eab5ea49ea7d)

