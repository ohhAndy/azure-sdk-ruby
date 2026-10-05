# AzureRest::AvailableDelegation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the AvailableDelegation resource. | [optional] |
| **id** | **String** | A unique identifier of the AvailableDelegation resource. | [optional] |
| **type** | **String** | Resource type. | [optional] |
| **service_name** | **String** | The name of the service and resource. | [optional] |
| **actions** | **Array&lt;String&gt;** | The actions permitted to the service upon delegation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AvailableDelegation.new(
  name: null,
  id: null,
  type: null,
  service_name: null,
  actions: null
)
```

