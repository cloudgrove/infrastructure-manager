terraform {
  cloud {
    organization = "cloudgrove"

    workspaces {
      tags = ["infrastructure-manager"]
    }
  }
}
