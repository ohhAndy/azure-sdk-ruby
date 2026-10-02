# AzureSDK::ManagementPolicyFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_match** | **Array&lt;String&gt;** | An array of strings for prefixes to be match. | [optional] |
| **blob_types** | **Array&lt;String&gt;** | An array of predefined enum values. Currently blockBlob supports all tiering and delete actions. Only delete actions are supported for appendBlob. |  |
| **blob_index_match** | [**Array&lt;TagFilter&gt;**](TagFilter.md) | An array of blob index tag based filters, there can be at most 10 tag filters | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagementPolicyFilter.new(
  prefix_match: null,
  blob_types: null,
  blob_index_match: null
)
```

