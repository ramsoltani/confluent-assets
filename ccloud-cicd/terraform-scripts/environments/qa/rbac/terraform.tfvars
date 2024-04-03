// terraform.tfvars

# terraform service account API key with organisation Admin role to create ressources in ccloud
confluent_cloud_api_key    = "vvvvvvvv"
confluent_cloud_api_secret = "/YKi14vvvvvv"
#kafka_rest_endpoint = "https://pkc-pgq85.us-west-2.aws.confluent.cloud:443"
kafka_api_key    = "vvvvvv"
kafka_api_secret = "vvvvvvv+vvvvv/vvvvvvv"

env_confluentPS_id     = "env-xxxxxx"
cluster_confluentPS_id = "lkc-xxxxxx"

service_accounts = {
  "sa1" = {
    display_name = "service-account-1"
    role_definitions = [
      {
        role_name   = "DeveloperRead"
        crn_pattern = "cloud-cluster=your-cluster-id/kafka=your-cluster-id/topic=test1"
      },
      {
        role_name   = "DeveloperRead"
        crn_pattern = "cloud-cluster=your-cluster-id/kafka=your-cluster-id/group=test2"
      }
    ]
  },
  "sa2" = {
    display_name = "service-account-2"
    role_definitions = [
      {
        role_name   = "DeveloperWrite"
        crn_pattern = "cloud-cluster=your-cluster-id/kafka=your-cluster-id/topic=test3"
      },
      {
        role_name   = "ResourceOwner"
        crn_pattern = "cloud-cluster=your-cluster-id/kafka=your-cluster-id/transactional-id=*"
      }
    ]
  },
  "sa3" = {
    display_name = "service-account-3"
    role_definitions = [
      {
        role_name   = "CloudClusterAdmin"
        crn_pattern = "cloud-cluster=your-cluster-id"
      },
      {
        role_name   = "ResourceOwner"
        crn_pattern = "schema-registry=lsrc-xxxxx/subject=*"
      }
    ]
  }
}
