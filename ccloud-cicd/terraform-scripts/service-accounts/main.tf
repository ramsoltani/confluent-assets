

module "service_accounts" {
  source                     = "../modules/kafka-sa"
  confluent_cloud_api_key    = var.confluent_cloud_api_key
  confluent_cloud_api_secret = var.confluent_cloud_api_secret
  accounts                   = var.accounts
}
