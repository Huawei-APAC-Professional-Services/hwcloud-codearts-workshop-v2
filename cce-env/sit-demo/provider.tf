terraform {
  required_providers {
    huaweicloud = {
      source = "huaweicloud/huaweicloud"
      version = "~> 1.53.0"
    }
  }
}
provider "huaweicloud" {
  region     = "ap-southeast-3"
  access_key = ""
  secret_key = ""
}