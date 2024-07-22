terraform {
  backend "s3" {
    bucket = "task-master-eks-cluster-terraform"
    key    = "path/to/my/key"
    region = "us-east-1"

  }
}
