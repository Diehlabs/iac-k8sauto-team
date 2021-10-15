locals {
  repos = {
    iac = {
      k8sauto-tkg-azure  = "IaC repo for TKG on Azure"
      k8sauto-aks        = "IaC repo for private AKS"
      k8sauto-core-azure = "IaC repo for re-usable Azure resources"
      k8sauto-ajs-jump   = "IaC repo for a jump box VM to communicate with AKS cluster"
    }
  }
}
