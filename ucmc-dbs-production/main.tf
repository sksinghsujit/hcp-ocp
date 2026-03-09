module "dbs_cluster" {
  # This points to your core module repository
  # source  = "github.com/sksinghsujit/terraform-modules//modules/dbs-cluster?ref=v1.0.0"
  source = "github.com/sksinghsujit/terraform-modules//modules/dbs-cluster?ref=v1.0.1"
  
  # Environment-specific variables injected by HCP Workspace
  K8S_HOST     = var.K8S_HOST
  K8S_TOKEN    = var.K8S_TOKEN
  K8S_CA_CERT  = var.K8S_CA_CERT

}
