# AzureRest::BlobAccessPointCommvaultSourcePropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection** | [**BlobAccessPointConnectionPropertiesUpdate**](BlobAccessPointConnectionPropertiesUpdate.md) |  | [optional] |
| **auth** | [**BlobAccessPointRemoteAuthPropertiesUpdate**](BlobAccessPointRemoteAuthPropertiesUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointCommvaultSourcePropertiesUpdate.new(
  connection: null,
  auth: null
)
```

