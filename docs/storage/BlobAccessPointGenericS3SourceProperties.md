# AzureRest::BlobAccessPointGenericS3SourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connection** | [**BlobAccessPointConnectionProperties**](BlobAccessPointConnectionProperties.md) |  |  |
| **auth** | [**BlobAccessPointRemoteAuthProperties**](BlobAccessPointRemoteAuthProperties.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointGenericS3SourceProperties.new(
  connection: null,
  auth: null
)
```

