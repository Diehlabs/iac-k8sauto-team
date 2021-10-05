terraform {
  backend "remote" {
    organization = "k8sAuto"
    workspaces {
      name = "iac-k8sauto-team"
    }
  }
}