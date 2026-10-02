# AzureSDK::PrivateLinkConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The HDInsight private linkable sub-resource name to apply the private link configuration to. For example, &#39;headnode&#39;, &#39;gateway&#39;, &#39;edgenode&#39;. |  |
| **provisioning_state** | **String** | The private link configuration provisioning state, which only appears in the response. | [optional][readonly] |
| **ip_configurations** | [**Array&lt;IPConfiguration&gt;**](IPConfiguration.md) | The IP configurations for the private link service. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkConfigurationProperties.new(
  group_id: null,
  provisioning_state: null,
  ip_configurations: null
)
```

