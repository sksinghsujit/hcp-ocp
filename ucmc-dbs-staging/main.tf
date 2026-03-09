variable "K8S_HOST" {}
variable "K8S_TOKEN" {}
variable "K8S_CA_CERT" {}


provider "kubernetes" {
  host = var.K8S_HOST
  token = var.K8S_TOKEN
  cluster_ca_certificate = var.K8S_CA_CERT
}

module "dbs_cluster" {
  source = "github.com/sksinghsujit/terraform-modules//modules/dbs-cluster?ref=v1.0.2"
  K8S_HOST = var.K8S_HOST
  K8S_TOKEN = var.K8S_TOKEN
  K8S_CA_CERT = var.K8S_CA_CERT
}
