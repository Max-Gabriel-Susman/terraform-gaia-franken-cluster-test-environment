

/***********************************************************

Terraform configuration for the franken cluster system that 
is currently being used as a test environment for the 
ongoing development of the Terr

***********************************************************/
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

// k8s configurations - currently being refused connection with localhost:80
/*
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "my-first-namespace"
  }
}
*/

// aws configurations - requires valid cred src
/*
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
*/

// oci configurations - requires oci config 
/*
provider "oci" {
  region              = "us-sanjose-1"
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "<your_compartment_OCID_here>"
  display_name   = "My internal VCN"
}
*/


// azure configurations - needs auth setup before I can apply this one 
/*
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
*/

// gcp configurations - doesn't support darwin_arm64 rn 
/*
provider "google" {
  credentials = file("<NAME>.json")

  project = "<PROJECT_ID>"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
*/

// vSphere configurations


// aliyun configurations


// digitalOcean configurations

// citrix configurations