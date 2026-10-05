# AzureRest::TrafficAnalyticsConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Flag to enable/disable traffic analytics. | [optional] |
| **workspace_id** | **String** | The resource guid of the attached workspace. | [optional] |
| **workspace_region** | **String** | The location of the attached workspace. | [optional] |
| **workspace_resource_id** | **String** | Resource Id of the attached workspace. | [optional] |
| **traffic_analytics_interval** | **Integer** | The interval in minutes which would decide how frequently TA service should do flow analytics. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TrafficAnalyticsConfigurationProperties.new(
  enabled: null,
  workspace_id: null,
  workspace_region: null,
  workspace_resource_id: null,
  traffic_analytics_interval: null
)
```

