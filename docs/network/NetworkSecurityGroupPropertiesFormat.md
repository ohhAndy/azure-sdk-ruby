# AzureSDK::NetworkSecurityGroupPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flush_connection** | **Boolean** | When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation. | [optional] |
| **security_rules** | [**Array&lt;SecurityRule&gt;**](SecurityRule.md) | A collection of security rules of the network security group. | [optional] |
| **default_security_rules** | [**Array&lt;SecurityRule&gt;**](SecurityRule.md) | The default security rules of network security group. | [optional][readonly] |
| **network_interfaces** | [**Array&lt;NetworkInterface&gt;**](NetworkInterface.md) | A collection of references to network interfaces. | [optional][readonly] |
| **subnets** | [**Array&lt;Subnet&gt;**](Subnet.md) | A collection of references to subnets. | [optional][readonly] |
| **flow_logs** | [**Array&lt;FlowLog&gt;**](FlowLog.md) | A collection of references to flow log resources. | [optional][readonly] |
| **resource_guid** | **String** | The resource GUID property of the network security group resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkSecurityGroupPropertiesFormat.new(
  flush_connection: null,
  security_rules: null,
  default_security_rules: null,
  network_interfaces: null,
  subnets: null,
  flow_logs: null,
  resource_guid: null,
  provisioning_state: null
)
```

