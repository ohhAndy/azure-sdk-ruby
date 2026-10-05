# AzureRest::ManagedClusterSecurityProfileDefenderSecurityGatingIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **azure_container_registry** | **String** | The container registry for which the identity will be used; the identity specified here should have a federated identity credential attached to it. | [optional] |
| **identity** | [**UserAssignedIdentity**](UserAssignedIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterSecurityProfileDefenderSecurityGatingIdentity.new(
  azure_container_registry: null,
  identity: null
)
```

