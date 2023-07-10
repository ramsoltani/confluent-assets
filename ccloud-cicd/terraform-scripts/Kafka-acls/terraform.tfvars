// terraform.tfvars

# terraform service account API key with organisation Admin role to create ressources in ccloud

confluent_cloud_api_key    = "AAAAAAAAAAAAAAAAA"
confluent_cloud_api_secret = "AAAAAAAAAAAAAAAAABBBBBBBBBBBB"

kafka_api_key    = "AAAAAAAAAAAAAAAAA"
kafka_api_secret = "AAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBB"


env_confluentPS_id     = "env-xxxxxx"
cluster_confluentPS_id = "lkc-xxxxx"



service_accounts = {
  "test-jdbc" = {
    acl_definitions = [
      {
        resource_type = "TOPIC"
        resource_name = "test1"
        pattern_type  = "LITERAL"
        host          = "*"
        operation     = "READ"
        permission    = "ALLOW"
      },
      {
        resource_type = "GROUP"
        resource_name = "group-1"
        pattern_type  = "LITERAL"
        host          = "*"
        operation     = "READ"
        permission    = "ALLOW"
      },
    ]
  },
  "test-s3-sink" = {
    acl_definitions = [
      {
        resource_type = "TOPIC"
        resource_name = "test1"
        pattern_type  = "LITERAL"
        host          = "*"
        operation     = "WRITE"
        permission    = "ALLOW"
      },
    ]
  },
}
