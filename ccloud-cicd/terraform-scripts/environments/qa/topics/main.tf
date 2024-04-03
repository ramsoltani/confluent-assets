data "confluent_environment" "env_confluentPS" {
  id = var.env_confluentPS_id
}

data "confluent_kafka_cluster" "cluster_confluentPS" {
  id = var.cluster_confluentPS_id
  environment {
    id = data.confluent_environment.env_confluentPS.id
  }
}


// Provisioning Kafka Topics requires access to the REST endpoint on the Kafka cluster
// If Terraform is not run from within the private network, this will not work

module "kafka_topics" {
  source = "../../../modules/kafka-topics"

  env_confluentPS_id         = data.confluent_environment.env_confluentPS.id
  confluent_cloud_api_key    = var.confluent_cloud_api_key
  confluent_cloud_api_secret = var.confluent_cloud_api_secret
  cluster_confluentPS_id     = data.confluent_kafka_cluster.cluster_confluentPS.id
  kafka_rest_endpoint        = var.kafka_rest_endpoint
  kafka_api_key              = var.kafka_api_key
  kafka_api_secret           = var.kafka_api_secret
  topics                     = var.topics
}
