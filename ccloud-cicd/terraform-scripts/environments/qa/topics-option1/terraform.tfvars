// terraform.tfvars

# terraform service account API key with organisation Admin role to create ressources in ccloud
confluent_cloud_api_key    = "XXXXXXXXXXX"
confluent_cloud_api_secret = "YYYYYYYYYYYYYYYYYYYYYYYYYYYY"
#kafka_rest_endpoint = "https://pkc-pgq85.us-west-2.aws.confluent.cloud:443"
kafka_api_key    = "AAAAAAAAAAAAAAA"
kafka_api_secret = "5BBBBBBBBBBBBBBBBBBBBBBBBBBBB"

env_confluentPS_id     = "env-xxxxxxx"
cluster_confluentPS_id = "lkc-xxxxxx"
kafka_rest_endpoint    = "https://xxxxxx.xxx.xxx.confluent.cloud:443"



#data_test_topic = "confluentPS-test"
topics = {
  confluentPS-abc = {
    partitions_count = 3
    cleanup_policy   = "delete"
  }
  confluentPS-aws = {
    partitions_count = 6
    cleanup_policy   = "compact"
  }
}
