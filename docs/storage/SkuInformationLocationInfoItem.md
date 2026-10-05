# AzureRest::SkuInformationLocationInfoItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Describes the location for the product where storage account resource can be created. | [optional][readonly] |
| **zones** | **Array&lt;String&gt;** | Describes the available zones for the product where storage account resource can be created. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SkuInformationLocationInfoItem.new(
  location: null,
  zones: null
)
```

