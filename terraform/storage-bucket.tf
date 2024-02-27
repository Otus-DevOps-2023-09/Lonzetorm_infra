terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
#  }
#  required_version = ">= 0.13"
backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket          = "terraform.test"
    region          = "ru-central1-a"
    key             = "states/terraform.tfstate"
access_key         = "xxxxxxxxxxxxxxxxxxxxxxxx"
secret_key         = "xxxxxxxxxxxxxxxxxxxxxxxx"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true

  }
}


#provider "yandex" {
# service_account_key_file = var.service_account_key_file
  #cloud_id                 = var.cloud_id
  #folder_id                = var.folder_id
  #zone                     = var.zone
#}
