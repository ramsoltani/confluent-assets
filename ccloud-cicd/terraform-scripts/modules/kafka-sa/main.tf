

resource "confluent_service_account" "confluentPS-sa" {
  for_each     = var.accounts
  display_name = each.key
  description  = each.value.description
}
