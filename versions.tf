terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 3.0"
    }

    infisical = {
      source  = "infisical/infisical"
      version = "~> 0.16"
    }
  }
}
