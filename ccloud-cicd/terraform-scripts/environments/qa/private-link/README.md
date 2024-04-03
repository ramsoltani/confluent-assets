## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.55.0 |
| <a name="requirement_confluent"></a> [confluent](#requirement\_confluent) | 1.68.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_confluent_network_private_link"></a> [confluent\_network\_private\_link](#module\_confluent\_network\_private\_link) | ../../../modules/private-link | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The ID of the Client on Azure | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The Secret of the Client on Azure | `string` | n/a | yes |
| <a name="input_confluent_cloud_api_key"></a> [confluent\_cloud\_api\_key](#input\_confluent\_cloud\_api\_key) | Confluent Cloud API Key (also referred as Cloud API ID) | `string` | n/a | yes |
| <a name="input_confluent_cloud_api_secret"></a> [confluent\_cloud\_api\_secret](#input\_confluent\_cloud\_api\_secret) | Confluent Cloud API Secret | `string` | n/a | yes |
| <a name="input_env_confluentPS_id"></a> [env\_confluentPS\_id](#input\_env\_confluentPS\_id) | Entreprise Non Prod Confluent Environment ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region of your VNet | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the Azure Resource Group that the virtual network belongs to | `string` | n/a | yes |
| <a name="input_subnet_name_by_zone"></a> [subnet\_name\_by\_zone](#input\_subnet\_name\_by\_zone) | A map of Zone to Subnet Name | `map(string)` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Azure subscription ID to enable for the Private Link Access where your VNet exists | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The Azure tenant ID in which Subscription exists | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | The name of your VNet that you want to connect to Confluent Cloud Cluster | `string` | n/a | yes |
