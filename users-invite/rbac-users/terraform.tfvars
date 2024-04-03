// terraform.tfvars

# terraform service account API key with organisation Admin role to create ressources in ccloud
confluent_cloud_api_key    = "vvvvvvvv"
confluent_cloud_api_secret = "/YKi14vvvvvv"
#kafka_rest_endpoint = "https://pkc-pgq85.us-west-2.aws.confluent.cloud:443"
kafka_api_key    = "vvvvvv"
kafka_api_secret = "vvvvvvv+vvvvv/vvvvvvv"

env_suncor_id     = "env-xxxxxxx"
cluster_suncor_id = "lkc-xxxxxxxx"

user_accounts = {
  "user-id1" = {
    email = "user_email-1"
    role_definitions = [
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxx/environment=env-xxxxx/cloud-cluster=lkc-xxxxxx/kafka=lkc-xxxxxxx/topic=*"
      },
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxx/environment=env-7yyo1p/cloud-cluster=lkc-xxxxxx/kafka=lkc-xxxxx/group=*"
      },
      {
        role_name   = "DataDiscovery"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxxxxxxxxxx/environment=env-xxxxxxx"
      }
    ]
  },
  "user-id2" = {
    email = "user_email-2"
    role_definitions = [
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxxxxxxx/environment=env-xxxxxx/cloud-cluster=lkc-xxxxxx/kafka=lkc-xxxxxx/topic=*"
      },
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxxxxx/environment=env-xxxxxx/cloud-cluster=lkc-xxxxxx/kafka=lkc-xxxxxx/group=*"
      },
      {
        role_name   = "DataDiscovery"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxxxxx/environment=env-xxxxx"
      }
    ]
  },
  "user-id3" = {
    email = "user_email-3"
    role_definitions = [
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxxxx/environment=env-xxxxx/cloud-cluster=lkc-xxxxx/kafka=lkc-xm39wk/topic=*"
      },
      {
        role_name   = "DeveloperRead"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxxxx/environment=env-xxxxx/cloud-cluster=lkc-xxxxxx/kafka=lkc-xxxxxxx/group=*"
      },
      {
        role_name   = "DataDiscovery"
        crn_pattern = "crn://confluent.cloud/organization=xxxxxxxxx/environment=env-xxxxx"
      }
    ]
  }
}
