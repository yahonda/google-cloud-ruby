# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/security_center/v1/notification_config.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.securitycenter.v1.NotificationConfig" do
    optional :name, :string, 1
    optional :description, :string, 2
    optional :pubsub_topic, :string, 3
    optional :service_account, :string, 4
    oneof :notify_config do
      optional :streaming_config, :message, 5, "google.cloud.securitycenter.v1.NotificationConfig.StreamingConfig"
    end
  end
  add_message "google.cloud.securitycenter.v1.NotificationConfig.StreamingConfig" do
    optional :filter, :string, 1
  end
end

module Google::Cloud::SecurityCenter::V1
  NotificationConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.NotificationConfig").msgclass
  NotificationConfig::StreamingConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.NotificationConfig.StreamingConfig").msgclass
end
