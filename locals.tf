locals {
  repos = {
    iac = {
      k8sauto-tkg-azure   = "IaC repo for TKG on Azure"
      k8sauto-aks         = "IaC repo for private AKS"
      k8sauto-aks-deploys = "Deployments for AKS cluster"
      k8sauto-core-azure  = "IaC repo for re-usable Azure resources"
      k8sauto-aks-jump    = "IaC repo for a jump box VM to communicate with AKS cluster"

    }
  }
}
