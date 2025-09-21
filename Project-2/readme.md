# Phase 2 – Deploying Node.js App on EKS

This is the second phase of my EKS learning project series, where I deployed a simple Node.js application onto an EKS cluster using best practices for service exposure.

---

## 🚀 What We Achieved in Phase 2

1. Deployed a simple **Node.js application** as a Kubernetes Deployment.  
2. Exposed the app using:
    - ✅ A **LoadBalancer service type** to provision an external AWS ELB.  
    - ✅ An **Ingress Resource** for advanced routing and HTTP-based access.  
3. Installed the **AWS Load Balancer Controller** using Helm Charts.  
4. Created an **IAM Service Account** to allow the Ingress Controller to provision and manage AWS Load Balancers securely.

---

## ✅ Steps Overview

### 1️⃣ Deploy Node.js Application

- Created a Deployment manifest running a sample Node.js server.
- Created a Service manifest of type `LoadBalancer` for simple exposure.

### 2️⃣ Ingress Setup

- Installed AWS Load Balancer Controller with Helm:
    ```bash
    helm repo add eks https://aws.github.io/eks-charts
    helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
      -n kube-system \
      --set clusterName=<eks-cluster-name> \
      --set serviceAccount.create=false \
      --set serviceAccount.name=aws-load-balancer-controller
    ```

- Created an IAM Service Account with necessary permissions attached.

- Applied Ingress manifests that used annotations to integrate with AWS Load Balancer Controller.

### 3️⃣ Accessing the App

- Access the application via the ELB DNS name provided by the service or the Ingress Controller.

---

## ✅ Key Learning Points

- Difference between `Service (LoadBalancer)` and `Ingress Resource`.  
- How Helm simplifies deploying controllers in Kubernetes.

For detailed explanation please go through my blog on [Hashnode](https://shivtrent.hashnode.dev/exposing-kubernetes-pods-to-internet-with-aws-load-balancer-controller-on-eks-using-loadbalancer-service-and-ingress)
