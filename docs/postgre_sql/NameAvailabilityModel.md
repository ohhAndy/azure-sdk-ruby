# AzureSDK::NameAvailabilityModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_available** | **Boolean** | Indicates if the resource name is available. | [optional] |
| **reason** | **String** | The reason why the given name is not available. | [optional] |
| **message** | **String** | Detailed reason why the given name is available. | [optional] |
| **name** | **String** | Name for which validity and availability was checked. | [optional][readonly] |
| **type** | **String** | Type of resource. It can be &#39;Microsoft.DBforPostgreSQL/flexibleServers&#39; or &#39;Microsoft.DBforPostgreSQL/flexibleServers/virtualendpoints&#39;. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NameAvailabilityModel.new(
  name_available: null,
  reason: null,
  message: null,
  name: null,
  type: null
)
```

