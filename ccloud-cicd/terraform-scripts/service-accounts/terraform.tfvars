// terraform.tfvars

# terraform service account API key with organisation Admin role to create ressources in ccloud
confluent_cloud_api_key    = "AAAAAAAAAAAA"
confluent_cloud_api_secret = "BBBBBBBBBBBBBBB"

# Accounts list
accounts = {
  confluentPS-jdbc = {
    description = "Service account for jdbc source connector"
  }
  confluentPS-s3-sink = {
    description = "Service account for S3 sink connector"
  }
  confluentPS-mulsoft = {
    description = "Service account for S3 sink connector"
  }
}
