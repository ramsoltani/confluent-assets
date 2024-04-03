
data "confluent_environment" "env_confluentPS" {
  id = var.env_confluentPS_id
}

module "confluent_cluster" {
  source = "../../../modules/azure-cluster"

  env_confluentPS_id         = data.confluent_environment.env_confluentPS.id
  confluent_cloud_api_key    = var.confluent_cloud_api_key
  confluent_cloud_api_secret = var.confluent_cloud_api_secret
  cluster_name               = var.cluster_name
  availability_zone          = var.availability_zone
  cku_number                 = var.cku_number

}
