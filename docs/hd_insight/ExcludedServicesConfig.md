# AzureRest::ExcludedServicesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **excluded_services_config_id** | **String** | The config id of excluded services. | [optional] |
| **excluded_services_list** | **String** | The list of excluded services. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ExcludedServicesConfig.new(
  excluded_services_config_id: null,
  excluded_services_list: null
)
```

