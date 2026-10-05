# AzureRest::ServiceEndpointPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The type of the endpoint service. | [optional] |
| **network_identifier** | [**SubResource**](SubResource.md) |  | [optional] |
| **locations** | **Array&lt;String&gt;** | A list of locations. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServiceEndpointPropertiesFormat2.new(
  service: null,
  network_identifier: null,
  locations: null,
  provisioning_state: null
)
```

