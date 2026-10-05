# AzureRest::BlobAccessPointQumuloSourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection** | [**BlobAccessPointConnectionProperties**](BlobAccessPointConnectionProperties.md) |  |  |
| **auth** | [**BlobAccessPointRemoteAuthProperties**](BlobAccessPointRemoteAuthProperties.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointQumuloSourceProperties.new(
  connection: null,
  auth: null
)
```

