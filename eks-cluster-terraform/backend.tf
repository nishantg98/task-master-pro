terraform {
  backend "s3" {
    bucket = "task-master-eks-cluster-terraform"
    key    = "task-master-pro/terraform.tfstate"
    region = "us-east-1"

  }
}
