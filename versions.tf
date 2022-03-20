
terraform { 
  cloud {
    organization = "gabe-susman"

    workspaces {
      tags = ["tag"]
    }
  }  
  
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.8.0" 
    }
    
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }

    /*
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
    */

    oci = {
      source = "hashicorp/oci"
    }
    
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14.9"
}