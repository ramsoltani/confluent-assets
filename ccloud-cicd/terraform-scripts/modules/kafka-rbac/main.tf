

data "confluent_environment" "env_confluentPS" {
  id = var.env_confluentPS_id
}

data "confluent_kafka_cluster" "cluster_confluentPS" {
  id = var.cluster_confluentPS_id
  environment {
    id = var.env_confluentPS_id
  }
}


data "confluent_service_account" "sa_name" {
  for_each     = var.service_accounts
  display_name = each.value.display_name
}


locals {
  roles = flatten([
    for account_name, account in var.service_accounts : [
      for role in account.role_definitions : {
        account_name = account_name
        role         = role
      }
    ]
  ])
}

resource "confluent_role_binding" "application-role-binding" {
  for_each = {
    for pair in local.roles :
    "${pair.account_name}_${pair.role.role_name}_${pair.role.crn_pattern}" => {
      principal   = "User:${data.confluent_service_account.sa_name[pair.account_name].id}"
      role_name   = pair.role.role_name
      crn_pattern = "${regex("crn://confluent.cloud/organization=[^/]+/environment=[^/]+", data.confluent_kafka_cluster.cluster_confluentPS.rbac_crn)}/${pair.role.crn_pattern}"
    }
  }

  principal   = each.value.principal
  role_name   = each.value.role_name
  crn_pattern = each.value.crn_pattern
}
