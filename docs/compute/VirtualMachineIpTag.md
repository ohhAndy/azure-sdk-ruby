# AzureSDK::VirtualMachineIpTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_tag_type** | **String** | IP tag type. Example: FirstPartyUsage. | [optional] |
| **tag** | **String** | IP tag associated with the public IP. Example: SQL, Storage etc. | [optional] |
| **first_party_service_tag_id** | **String** | The first party service tag resource identifier associated with the public IP address. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineIpTag.new(
  ip_tag_type: null,
  tag: null,
  first_party_service_tag_id: null
)
```

