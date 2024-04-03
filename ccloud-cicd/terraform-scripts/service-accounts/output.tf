output "service_account_ids" {
  description = "Map of service account display names to their IDs"
  value       = { for key, sa in confluent_service_account.confluentPS-sa : key => sa.id }
}
