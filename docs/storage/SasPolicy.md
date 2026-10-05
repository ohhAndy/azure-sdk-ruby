# AzureRest::SasPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sas_expiration_period** | **String** | The SAS expiration period, DD.HH:MM:SS. |  |
| **expiration_action** | **String** | The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The &#39;Log&#39; action can be used for audit purposes and the &#39;Block&#39; action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period. | [default to &#39;Log&#39;] |
| **require_user_bound_user_delegation_sas** | **Boolean** | Indicates whether user delegation SAS (shared access signature) tokens are required to be bound to a specific user. The default interpretation is false for this property. | [optional] |
| **require_user_bound_user_delegation_sas_action** | [**PolicyViolationAction**](PolicyViolationAction.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SasPolicy.new(
  sas_expiration_period: null,
  expiration_action: null,
  require_user_bound_user_delegation_sas: null,
  require_user_bound_user_delegation_sas_action: null
)
```

