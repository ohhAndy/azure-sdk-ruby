# AzureRest::ServerForUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**MySQLServerIdentity**](MySQLServerIdentity.md) |  | [optional] |
| **sku** | [**MySQLServerSku**](MySQLServerSku.md) |  | [optional] |
| **properties** | [**ServerPropertiesForUpdate**](ServerPropertiesForUpdate.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Application-specific metadata in the form of key-value pairs. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerForUpdate.new(
  identity: null,
  sku: null,
  properties: null,
  tags: null
)
```

