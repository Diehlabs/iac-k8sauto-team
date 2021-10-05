provider "github" {
  owner = "Diehlabs"
  token = var.github_token
}

provider "tfe" {}


# terraform cloud
resource "tfe_organization" "k8sauto" {
  name  = "k8sAuto"
  email = "github@diehlabs.com"
}

resource "tfe_workspace" "iac_k8sauto_team" {
  name              = "iac-k8sauto-team"
  organization      = tfe_organization.k8sauto.name
  execution_mode    = "local"
  tag_names         = ["test", "k8s"]
  terraform_version = var.tf_version
}

# github

resource "github_team" "k8sauto" {
  name        = tfe_organization.k8sauto.name
  description = "Kubernetes Automation"
  privacy     = "closed"
}

resource "github_repository" "iac_k8sauto_team" {
  name        = "iac-k8sauto-team"
  description = "Manages resources for this team."
  visibility  = "public"
}

resource "github_team_repository" "iac_k8sauto_team" {
  repository = github_repository.iac_k8sauto_team.name
  team_id    = github_team.k8sauto.id
  permission = "maintain"
}
