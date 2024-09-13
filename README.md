# **Project 1: Introduction to Terraform**

## **Objective**

Set up your first Terraform configuration to provision a simple local file.

## **Prerequisites**

- **Terraform Installed:** [Download Terraform](https://www.terraform.io/downloads.html)

## **Steps**

### **1. Create a Working Directory**

```bash
mkdir terraform_project_1
cd terraform_project_1
```

### **2. Create `main.tf`**

```hcl
# main.tf

terraform {
  required_version = ">= 1.0.0"
}

provider "local" {}

resource "local_file" "greeting" {
  filename = "${path.module}/hello_terraform.txt"
  content  = "Hello, Terraform!"
}
```

### **3. Initialize Terraform**

```bash
terraform init
```

### **4. Validate and Format Configuration**

```bash
terraform validate
terraform fmt
```

### **5. Plan and Apply**

```bash
terraform plan
terraform apply
```

### **6. Verify the File**

```bash
cat hello_terraform.txt
# Output should be: Hello, Terraform!
```

### **7. Clean Up**

```bash
terraform destroy
```

## **Concepts Covered**

- **Basic Syntax:** Writing Terraform configuration using HCL.
- **Initialization:** Preparing your working directory with `terraform init`.
- **Applying Configurations:** Managing resources with `terraform plan` and `terraform apply`.
- **State File:** Understanding `terraform.tfstate` for resource tracking.

