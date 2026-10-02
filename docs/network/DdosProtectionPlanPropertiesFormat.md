# AzureSDK::DdosProtectionPlanPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_guid** | **String** | The resource GUID property of the DDoS protection plan resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **public_ip_addresses** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of public IPs associated with the DDoS protection plan resource. This list is read-only. | [optional][readonly] |
| **virtual_networks** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of virtual networks associated with the DDoS protection plan resource. This list is read-only. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosProtectionPlanPropertiesFormat.new(
  resource_guid: null,
  provisioning_state: null,
  public_ip_addresses: null,
  virtual_networks: null
)
```

