# AzureSDK::BastionShareableLinkListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vms** | [**Array&lt;BastionShareableLink&gt;**](BastionShareableLink.md) | List of VM references. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionShareableLinkListRequest.new(
  vms: null
)
```

