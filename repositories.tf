resource "github_repository" "repos" {
  for_each    = local.repos.iac
  name        = each.key
  description = each.value
  visibility  = "public"
}

resource "github_team_repository" "team_repos" {
  for_each   = local.repos.iac
  repository = each.key
  team_id    = github_repository.repos[each.key].id
  permission = "maintain"
}

resource "tfe_workspace" "workspaces" {
  for_each       = local.repos.iac
  name           = each.key
  description    = each.value
  organization   = "Diehlabs"
  execution_mode = "local"
  tag_names      = ["test", "k8s"]
}