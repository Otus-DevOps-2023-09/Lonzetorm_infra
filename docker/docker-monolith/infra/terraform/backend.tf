terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "reddit-bucket"
    region   = "ru-central1"
    key      = "terraform.tfstate"
    access_key = "YCAJER-gMjfkjvhfdkvjhcHJ"
    secret_key = "Yehwkjrb_hRh3g4hj343bhbk2
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
