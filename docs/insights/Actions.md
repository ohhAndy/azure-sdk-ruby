# AzureSDK::Actions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_groups** | **Array&lt;String&gt;** | Action Group resource Ids to invoke when the alert fires. | [optional] |
| **custom_properties** | **Hash&lt;String, String&gt;** | The properties of an alert payload. | [optional] |
| **action_properties** | **Hash&lt;String, String&gt;** | The properties of an action properties. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Actions.new(
  action_groups: null,
  custom_properties: null,
  action_properties: null
)
```

