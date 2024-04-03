module "confluent_network_private_link" {
  source = "../../../modules/private-link"

  env_confluentPS_id  = var.env_confluentPS_id
  region              = var.region
  subscription_id     = var.subscription_id
  resource_group      = var.resource_group
  vnet_name           = var.vnet_name
  subnet_name_by_zone = var.subnet_name_by_zone
  client_id           = var.client_id
  client_secret       = var.client_secret
  tenant_id           = var.tenant_id
}
