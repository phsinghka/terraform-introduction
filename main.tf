terraform {
  required_version = ">= 1.0.0"
}

provider "local" {

}

resource "local_file" "greeting" {
  filename = "${path.module}/hello_terraform.txt"
  content  = "Hello, Terraform"
}

resource "local_file" "goodbye" {
  filename = "${path.module}/goodbyt_terraform.txt"
  content  = "Goodbye, Terraform"
}
