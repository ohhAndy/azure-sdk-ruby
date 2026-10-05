# AzureRest::AzureResourceManagerCommonTypesEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **infrastructure_encryption** | [**AzureResourceManagerCommonTypesInfrastructureEncryption**](AzureResourceManagerCommonTypesInfrastructureEncryption.md) |  | [optional] |
| **customer_managed_key_encryption** | [**AzureResourceManagerCommonTypesCustomerManagedKeyEncryption**](AzureResourceManagerCommonTypesCustomerManagedKeyEncryption.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AzureResourceManagerCommonTypesEncryption.new(
  infrastructure_encryption: null,
  customer_managed_key_encryption: null
)
```

