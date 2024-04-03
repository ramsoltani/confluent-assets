
module "confluent_cluster_link" {
  source = "../../../modules/destinition-initiated-clusterlink"

  confluent_cloud_api_key                  = var.confluent_cloud_api_key
  confluent_cloud_api_secret               = var.confluent_cloud_api_secret
  kafka_source_api_key                     = var.kafka_source_api_key
  kafka_source_api_secret                  = var.kafka_source_api_secret
  kafka_destination_api_key                = var.kafka_destination_api_key
  kafka_destination_api_secret             = var.kafka_destination_api_secret
  source_kafka_cluster_id                  = var.source_kafka_cluster_id
  source_kafka_cluster_environment_id      = var.source_kafka_cluster_environment_id
  destination_kafka_cluster_id             = var.destination_kafka_cluster_id
  destination_kafka_cluster_environment_id = var.destination_kafka_cluster_environment_id
  cluster_link_name                        = var.cluster_link_name
}
