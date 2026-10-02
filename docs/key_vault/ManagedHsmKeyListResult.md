# AzureSDK::ManagedHsmKeyListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ManagedHsmKey&gt;**](ManagedHsmKey.md) | The ManagedHsmKey items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHsmKeyListResult.new(
  value: null,
  next_link: null
)
```

