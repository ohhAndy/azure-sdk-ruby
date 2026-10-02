# AzureSDK::Permission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | **Array&lt;String&gt;** | Allowed actions. | [optional] |
| **not_actions** | **Array&lt;String&gt;** | Denied actions. | [optional] |
| **data_actions** | **Array&lt;String&gt;** | Allowed Data actions. | [optional] |
| **not_data_actions** | **Array&lt;String&gt;** | Denied Data actions. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Permission.new(
  actions: null,
  not_actions: null,
  data_actions: null,
  not_data_actions: null
)
```

