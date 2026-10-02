# AzureSDK::ConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the configuration. | [optional] |
| **current_value** | **String** | Current value of the configuration. | [optional] |
| **description** | **String** | Description of the configuration. | [optional][readonly] |
| **documentation_link** | **String** | The link used to get the document from community or Azure site. | [optional][readonly] |
| **default_value** | **String** | Default value of the configuration. | [optional][readonly] |
| **data_type** | **String** | Data type of the configuration. | [optional][readonly] |
| **allowed_values** | **String** | Allowed values of the configuration. | [optional][readonly] |
| **source** | [**ConfigurationSource**](ConfigurationSource.md) |  | [optional] |
| **is_read_only** | [**IsReadOnly**](IsReadOnly.md) |  | [optional] |
| **is_config_pending_restart** | [**IsConfigPendingRestart**](IsConfigPendingRestart.md) |  | [optional] |
| **is_dynamic_config** | [**IsDynamicConfig**](IsDynamicConfig.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ConfigurationProperties.new(
  value: null,
  current_value: null,
  description: null,
  documentation_link: null,
  default_value: null,
  data_type: null,
  allowed_values: null,
  source: null,
  is_read_only: null,
  is_config_pending_restart: null,
  is_dynamic_config: null
)
```

