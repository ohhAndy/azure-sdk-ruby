# AzureRest::ImmutableStorageAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | A boolean flag which enables account-level immutability. All the containers under such an account have object-level immutability enabled by default. | [optional] |
| **immutability_policy** | [**AccountImmutabilityPolicyProperties**](AccountImmutabilityPolicyProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ImmutableStorageAccount.new(
  enabled: null,
  immutability_policy: null
)
```

