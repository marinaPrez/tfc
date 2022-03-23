terraform {
  cloud {
    organization = "marina-org"
    workspaces {
      tags = ["opps"]
    }
  }
}

