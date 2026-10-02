# AzureSDK::ManagedNamespaceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ManagedNamespace&gt;**](ManagedNamespace.md) | The ManagedNamespace items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedNamespaceListResult.new(
  value: null,
  next_link: null
)
```

