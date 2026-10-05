# AzureRest::DataShareConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_share_uri** | **String** | The URI of the backing DataShare. Must be in the format: azds://&lt;region&gt;:&lt;DataShareName&gt;:&lt;DataShareIdentifier&gt; |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DataShareConnection.new(
  data_share_uri: null
)
```

