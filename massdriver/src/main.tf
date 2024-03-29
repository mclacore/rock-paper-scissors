module "helm" {
  source                 = "github.com/massdriver-cloud/terraform-modules//massdriver-application-helm?ref=c09e929"
  name                   = var.md_metadata.name_prefix
  namespace              = var.namespace
  chart                  = "${path.module}/chart"
  kubernetes_cluster     = var.kubernetes_cluster
  helm_additional_values = {}
}
