
terraform {

backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket          = "terraform.test"
    region          = "ru-central1-a"
    key             = "states/stage/terraform.tfstate"
access_key         = "xxxxxxxxxxxxxxxxxxxxx"
secret_key         = "xxxxxxxxxxxxxxxxxxxxx"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true

  }
}
