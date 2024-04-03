terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.68.0"
    }
  }
}

provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret
}

provider "confluent" {
  # https://developer.hashicorp.com/terraform/language/providers/configuration#alias-multiple-provider-configurations
  alias = "kafka"

  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret

  kafka_id            = data.confluent_kafka_cluster.cluster_confluentPS.id
  kafka_rest_endpoint = data.confluent_kafka_cluster.cluster_confluentPS.rest_endpoint
  kafka_api_key       = var.kafka_api_key
  kafka_api_secret    = var.kafka_api_secret
}
