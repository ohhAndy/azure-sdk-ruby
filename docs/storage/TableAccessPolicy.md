# AzureSDK::TableAccessPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** | Start time of the access policy | [optional] |
| **expiry_time** | **Time** | Expiry time of the access policy | [optional] |
| **permission** | **String** | Required. List of abbreviated permissions. Supported permission values include &#39;r&#39;,&#39;a&#39;,&#39;u&#39;,&#39;d&#39; |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TableAccessPolicy.new(
  start_time: null,
  expiry_time: null,
  permission: null
)
```

