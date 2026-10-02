# AzureSDK::LogAnalyticsInputBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob_container_sas_uri** | **String** | SAS Uri of the logging blob container to which LogAnalytics Api writes output logs to. |  |
| **from_time** | **Time** | From time of the query |  |
| **to_time** | **Time** | To time of the query |  |
| **group_by_throttle_policy** | **Boolean** | Group query result by Throttle Policy applied. | [optional] |
| **group_by_operation_name** | **Boolean** | Group query result by Operation Name. | [optional] |
| **group_by_resource_name** | **Boolean** | Group query result by Resource Name. | [optional] |
| **group_by_client_application_id** | **Boolean** | Group query result by Client Application ID. | [optional] |
| **group_by_user_agent** | **Boolean** | Group query result by User Agent. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LogAnalyticsInputBase.new(
  blob_container_sas_uri: null,
  from_time: null,
  to_time: null,
  group_by_throttle_policy: null,
  group_by_operation_name: null,
  group_by_resource_name: null,
  group_by_client_application_id: null,
  group_by_user_agent: null
)
```

