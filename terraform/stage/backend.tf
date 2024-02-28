terraform {
  backend "s3" {
    endpoint = "https://storage.yandexcloud.net"
    bucket   = "backend-azarov"
    region   = "ru-central1"
    key      = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true

    dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gfsjkfhrekjfvb4jb/freikfhrkckrfjkerf89"
    dynamodb_table    = "backend-azarov-table"
  }
}
