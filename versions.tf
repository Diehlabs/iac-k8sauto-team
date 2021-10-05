terraform {
  required_version = "~> 1.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.15.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.26"
    }
  }
}
