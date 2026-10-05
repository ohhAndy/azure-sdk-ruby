# AzureRest::StorageAccountCreateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | [**Sku**](Sku.md) |  |  |
| **kind** | [**Kind**](Kind.md) |  |  |
| **location** | **String** | Required. Gets or sets the location of the resource. This will be one of the supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.). The geo region of a resource cannot be changed once it is created, but if an identical geo region is specified on update, the request will succeed. |  |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | Optional. Gets or sets the pinned logical availability zone for the storage account. | [optional] |
| **placement** | [**Placement**](Placement.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Gets or sets a list of key value pairs that describe the resource. These tags can be used for viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key with a length no greater than 128 characters and a value with a length no greater than 256 characters. | [optional] |
| **identity** | [**Identity**](Identity.md) |  | [optional] |
| **properties** | [**StorageAccountPropertiesCreateParameters**](StorageAccountPropertiesCreateParameters.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountCreateParameters.new(
  sku: null,
  kind: null,
  location: null,
  extended_location: null,
  zones: null,
  placement: null,
  tags: null,
  identity: null,
  properties: null
)
```

