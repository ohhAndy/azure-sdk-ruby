# AzureRest::ServiceDelegationPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The name of the service to whom the subnet should be delegated (e.g. Microsoft.Sql/servers). | [optional] |
| **actions** | **Array&lt;String&gt;** | The actions permitted to the service upon delegation. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServiceDelegationPropertiesFormat2.new(
  service_name: null,
  actions: null,
  provisioning_state: null
)
```

