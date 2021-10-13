terraform {
  backend "remote" {
    organization = "Diehlabs"

    workspaces {
      name = "iac-k8sauto-team"
    }
  }
}
