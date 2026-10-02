# AzureSDK::ConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration. | [optional] |
| **description** | **String** | Description of the configuration (also known as server parameter). | [optional][readonly] |
| **default_value** | **String** | Value assigned by default to the configuration (also known as server parameter). | [optional][readonly] |
| **data_type** | [**ConfigurationDataType**](ConfigurationDataType.md) |  | [optional] |
| **allowed_values** | **String** | Allowed values of the configuration (also known as server parameter). | [optional][readonly] |
| **source** | **String** | Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration. | [optional] |
| **is_dynamic_config** | **Boolean** | Indicates if it&#39;s a dynamic (true) or static (false) configuration (also known as server parameter). Static server parameters require a server restart after changing the value assigned to them, for the change to take effect. Dynamic server parameters do not require a server restart after changing the value assigned to them, for the change to take effect. | [optional][readonly] |
| **is_read_only** | **Boolean** | Indicates if it&#39;s a read-only (true) or modifiable (false) configuration (also known as server parameter). | [optional][readonly] |
| **is_config_pending_restart** | **Boolean** | Indicates if the value assigned to the configuration (also known as server parameter) is pending a server restart for it to take effect. | [optional][readonly] |
| **unit** | **String** | Units in which the configuration (also known as server parameter) value is expressed. | [optional][readonly] |
| **documentation_link** | **String** | Link pointing to the documentation of the configuration (also known as server parameter). | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ConfigurationProperties.new(
  value: null,
  description: null,
  default_value: null,
  data_type: null,
  allowed_values: null,
  source: null,
  is_dynamic_config: null,
  is_read_only: null,
  is_config_pending_restart: null,
  unit: null,
  documentation_link: null
)
```

