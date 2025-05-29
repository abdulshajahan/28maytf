terraform {
  #required_version = "= 1.10.0"
  required_providers { #required provers
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.83.0" # ~>5.82.0 bigfix versions, ~>5.82 allows 5.x
    }
    local = {
      source = "hashicorp/local"
      version = "= 2.5.0"
    }
  }
  # backend "s3" { #backend for state file
  #   bucket = "tcstfbackend"
  #   key    = "tf29.tfstate"
  #   region = "us-east-2"
    
  # }
}
provider "local" {}
provider "random" { }
provider "aws" { #make sure awscli already installed
  region = "us-east-2" #priority
  profile = "default"
}
provider "aws" { #make sure awscli already installed
  alias = "aws2"
  region = "us-west-2" #priority
  profile = "kppproject"
}
