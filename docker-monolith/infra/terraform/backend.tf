terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "reddit-bucket"
    region   = "ru-central1"
    key      = "terraform.jfstate"
    access_key = "YCAJER-gMdfjkgkhdfjdhgcJI"
    secret_key = "YCPdQb_hRFrgjreklgherkjghkjghdk2Q_EMb"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
