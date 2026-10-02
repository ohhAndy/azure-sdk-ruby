# AzureSDK::DeletedManagedHsmListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DeletedManagedHsm&gt;**](DeletedManagedHsm.md) | The DeletedManagedHsm items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DeletedManagedHsmListResult.new(
  value: null,
  next_link: null
)
```

