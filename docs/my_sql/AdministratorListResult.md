# AzureSDK::AdministratorListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AzureADAdministrator&gt;**](AzureADAdministrator.md) | The list of azure ad administrator of a server. | [optional] |
| **next_link** | **String** | The link used to get the next page of operations. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdministratorListResult.new(
  value: null,
  next_link: null
)
```

