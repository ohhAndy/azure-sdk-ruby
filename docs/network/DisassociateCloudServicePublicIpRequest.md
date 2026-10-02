# AzureSDK::DisassociateCloudServicePublicIpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_arm_id** | **String** | ARM ID of the Standalone Public IP to associate. This is of the form : /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName} |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DisassociateCloudServicePublicIpRequest.new(
  public_ip_arm_id: null
)
```

