data "confluent_environment" "env_confluentPS" {
  id = var.env_confluentPS_id
}

data "confluent_kafka_cluster" "cluster_confluentPS" {
  id = var.cluster_confluentPS_id
  environment {
    id = var.env_confluentPS_id
  }
}

module "cc-rbac" {
  source = "../../../modules/kafka-rbac"

  env_confluentPS_id         = data.confluent_environment.env_confluentPS.id
  confluent_cloud_api_key    = var.confluent_cloud_api_key
  confluent_cloud_api_secret = var.confluent_cloud_api_secret
  cluster_confluentPS_id     = data.confluent_kafka_cluster.cluster_confluentPS.id
  kafka_api_key              = var.kafka_api_key
  kafka_api_secret           = var.kafka_api_secret
  service_accounts           = var.service_accounts
}
