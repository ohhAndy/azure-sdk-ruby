# AzureRest::NetworkSecurityPerimeterConfigurationPropertiesResourceAssociation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the resource association | [optional] |
| **access_mode** | [**ResourceAssociationAccessMode**](ResourceAssociationAccessMode.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkSecurityPerimeterConfigurationPropertiesResourceAssociation.new(
  name: null,
  access_mode: null
)
```

