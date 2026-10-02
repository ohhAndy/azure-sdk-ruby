# AzureSDK::SkuInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**SkuName**](SkuName.md) |  |  |
| **tier** | [**SkuTier**](SkuTier.md) |  | [optional] |
| **resource_type** | **String** | The type of the resource, usually it is &#39;storageAccounts&#39;. | [optional][readonly] |
| **kind** | [**Kind**](Kind.md) |  | [optional] |
| **locations** | **Array&lt;String&gt;** | The set of locations that the SKU is available. This will be supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.). | [optional][readonly] |
| **location_info** | [**Array&lt;SkuInformationLocationInfoItem&gt;**](SkuInformationLocationInfoItem.md) |  | [optional] |
| **capabilities** | [**Array&lt;SKUCapability&gt;**](SKUCapability.md) | The capability information in the specified SKU, including file encryption, network ACLs, change notification, etc. | [optional][readonly] |
| **restrictions** | [**Array&lt;Restriction&gt;**](Restriction.md) | The restrictions because of which SKU cannot be used. This is empty if there are no restrictions. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SkuInformation.new(
  name: null,
  tier: null,
  resource_type: null,
  kind: null,
  locations: null,
  location_info: null,
  capabilities: null,
  restrictions: null
)
```

