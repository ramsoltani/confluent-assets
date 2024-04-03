# terraform service account API key with organisation Admin role to create ressources in ccloud
confluent_cloud_api_key    = "xxxxxx"
confluent_cloud_api_secret = "xxxxxxxxxxxxxxxxxxxx"


# confluentPS Environement ID for Entreprise Non production
env_confluentPS = "env-xxxxxx"
# The Azure tenant ID in which Subscription exists
# Represents an organization in Azure Active Directory. You can find your Azure Tenant ID in the [Azure Portal under Azure Active Directory](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Overview). Must be a valid **32 character UUID string**.
tenant_id = "xxxxxxxxxxxxxxxxxx"

# The Azure subscription ID to enable for the Private Link Access where your VNet exists
# You can find your Azure subscription ID in the [Azure Portal on the Overview tab of your Azure Virtual Network](https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.Network%2FvirtualNetworks). Must be a valid 32 character UUID string.
subscription_id = "xxxxxxxxxxxxxxxxx"

# The ID of the Client on Azure
client_id = "xxxxxxxxxxxxxxxxxx"

# The Secret of the Client on Azure
client_secret = "xxxxxxxxxxxxxxxxxxxx"

# The name of the Azure Resource Group that the virtual network belongs to
# You can find the name of your Azure Resource Group in the [Azure Portal on the Overview tab of your Azure Virtual Network](https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.Network%2FvirtualNetworks).
resource_group = "resource-group-name"

# The name of your VNet that you want to connect to Confluent Cloud Cluster
# You can find the name of your Azure VNet in the [Azure Portal on the Overview tab of your Azure Virtual Network](https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.Network%2FvirtualNetworks).
vnet_name = "vnet-name"

# The region of your Azure VNet
region = "canadacentral"

# A map of Zone to Subnet Name
# On Azure, zones are Confluent-chosen names (for example, `1`, `2`, `3`) since Azure does not have universal zone identifiers.
subnet_name_by_zone = {
  "1" = "sub1",
  "2" = "sub2",
  "3" = "sub3",
}

# Limitations of Azure Private Link
# https://docs.confluent.io/cloud/current/networking/private-links/azure-privatelink.html#limitations
