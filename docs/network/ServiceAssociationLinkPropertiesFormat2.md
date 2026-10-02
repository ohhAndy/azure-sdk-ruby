# AzureSDK::ServiceAssociationLinkPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_resource_type** | **String** | Resource type of the linked resource. | [optional] |
| **link** | **String** | Link to the external resource. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **allow_delete** | **Boolean** | If true, the resource can be deleted. | [optional] |
| **locations** | **Array&lt;String&gt;** | A list of locations. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceAssociationLinkPropertiesFormat2.new(
  linked_resource_type: null,
  link: null,
  provisioning_state: null,
  allow_delete: null,
  locations: null
)
```

