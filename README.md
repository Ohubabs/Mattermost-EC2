# Mattermost Project!


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
        
- Private Subnet Routed to a NAT Gateway.
- Public Subnet routed to an Internet Gateway.

2 – Install and Configure a MYSQL database on an EC2 instance running on Ubuntu 22.04 deployed within the Private Subnet and with a security group that has Port 3306 open.


3 –  Install and Configure Mattermost Team Edition on an EC2 instance running on a Ubuntu 22.04 OS deployed within the Public Subnet and with a security group that has Port 8065 open.
![image](https://github.com/Konoha-23/konoha_mattermost/assets/68171102/dee6d843-26a6-454a-a93a-eab5ea49ea7d)

