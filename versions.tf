
terraform { 
    // do I even need the cloud block for a vcs driven workflow?
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
    
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }

    alicloud = {
      source = "aliyun/alicloud"
      version = "1.160.0"
    }

    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.40.0-beta0"
    }

    oci = {
      source = "oracle/oci"
      version = "4.68.0"
    }

    citrixadc = {
      source = "citrix/citrixadc"
      version = "1.12.0"
    }

    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.18.0"
    }

    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.1.1"
    }
  }

  required_version = ">= 0.14.9"
}
