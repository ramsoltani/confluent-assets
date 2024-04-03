

data "confluent_environment" "env_confluentPS" {
  id = var.env_confluentPS_id
}

data "confluent_network" "private-link" {
  id = var.confluent_network_id
  environment {
    id = data.confluent_environment.env_confluentPS.id
  }
}

resource "confluent_kafka_cluster" "azure-dedicated-dev" {
  display_name = var.cluster_name
  availability = var.availability_zone
  cloud        = data.confluent_network.private-link.cloud
  region       = data.confluent_network.private-link.region
  dedicated {
    cku = var.cku_number
  }
  environment {
    id = data.confluent_environment.env_confluentPS.id
  }
  network {
    id = data.confluent_network.private-link.id
  }
}
