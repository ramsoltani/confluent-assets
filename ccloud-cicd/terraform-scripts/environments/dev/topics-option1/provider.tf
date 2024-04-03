terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.68.0"
    }
  }
}

provider "confluent" {
  cloud_api_key       = var.confluent_cloud_api_key
  cloud_api_secret    = var.confluent_cloud_api_secret
  kafka_id            = var.cluster_confluentPS_id
  kafka_rest_endpoint = var.kafka_rest_endpoint
  kafka_api_key       = var.kafka_api_key
  kafka_api_secret    = var.kafka_api_secret
}
