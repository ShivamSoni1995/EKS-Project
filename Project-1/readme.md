🚀 **EKS Cluster Provisioning with Terraform**
This project helps you provision an Amazon EKS (Elastic Kubernetes Service) cluster on AWS using Terraform – optimized for simplicity and learning.

---

✅ **Prerequisites**

* 🛠️ Terraform installed (v1.3+ recommended)
* ☁️ AWS CLI installed & configured with proper credentials
* 🔐 AWS Account with permissions to create VPCs, EC2, EKS, IAM, etc.

---

📝 **Project Overview**
This Terraform setup automates creation of:

1. 🌐 VPC with public & private subnets
2. 🚪 Internet Gateway for public subnet routing
3. 📡 Elastic IP for NAT Gateway
4. 🔧 NAT Gateway for private subnet internet access
5. 🛣️ Route Tables (public & private)
6. ☸️ EKS Cluster (managed control plane)
7. ⚡ Managed Node Group (worker nodes)

---

⚡ **Terraform Workflow**

1️⃣ Clone the repo:
`git clone https://github.com/your-username/EKS-Project`
`cd EKS-Project/Project-1`

2️⃣ Initialize Terraform:
`terraform init`

3️⃣ Preview infrastructure plan:
`terraform plan`

4️⃣ Apply config and provision infra:
`terraform apply`
*(Type "yes" when prompted)*

---

📊 **Outputs After Apply**

* 🌍 `cluster_endpoint`: EKS API server URL
* 🔒 `cluster_security_group_id`: Security Group of cluster
* 🔑 `node_group_role_arn`: IAM Role ARN for worker nodes
* 🗂️ `kubeconfig`: Kubeconfig content for cluster access
* 🏷️ `cluster_name`: EKS cluster name

---



💡 **Notes**

* 📍 Region: us-east-1
* 🖥️ Node type: t3.nano (very cost-efficient)
* 🧱 Minimal resources ideal for learning purposes

---

⚠️ **Disclaimer**
This infrastructure is designed for learning & development only.
For production, follow high availability, security, and monitoring best practices.

---

