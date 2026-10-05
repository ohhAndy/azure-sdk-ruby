# AzureRest::FlowLogPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_resource_id** | **String** | ID of network security group to which flow log will be applied. |  |
| **target_resource_guid** | **String** | Guid of network security group to which flow log will be applied. | [optional][readonly] |
| **storage_id** | **String** | ID of the storage account which is used to store the flow log. |  |
| **enabled_filtering_criteria** | **String** | Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged. | [optional] |
| **record_types** | **String** | Optional field to filter network traffic logs based on flow states. Value of this field could be any comma separated combination string of letters B,C,E or D. B represents Begin, when a flow is created. C represents Continue for an ongoing flow generated at every five-minute interval. E represents End, when a flow is terminated. D represents Deny, when a flow is denied. If not specified, all network traffic will be logged. | [optional] |
| **enabled** | **Boolean** | Flag to enable/disable flow logging. | [optional] |
| **retention_policy** | [**RetentionPolicyParameters**](RetentionPolicyParameters.md) |  | [optional] |
| **format** | [**FlowLogFormatParameters**](FlowLogFormatParameters.md) |  | [optional] |
| **flow_analytics_configuration** | [**TrafficAnalyticsProperties**](TrafficAnalyticsProperties.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FlowLogPropertiesFormat.new(
  target_resource_id: null,
  target_resource_guid: null,
  storage_id: null,
  enabled_filtering_criteria: null,
  record_types: null,
  enabled: null,
  retention_policy: null,
  format: null,
  flow_analytics_configuration: null,
  provisioning_state: null
)
```

