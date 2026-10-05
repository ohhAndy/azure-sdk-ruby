# AzureRest::ManagementPolicyVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier_to_cool** | [**DateAfterCreation**](DateAfterCreation.md) |  | [optional] |
| **tier_to_archive** | [**DateAfterCreation**](DateAfterCreation.md) |  | [optional] |
| **tier_to_cold** | [**DateAfterCreation**](DateAfterCreation.md) |  | [optional] |
| **tier_to_hot** | [**DateAfterCreation**](DateAfterCreation.md) |  | [optional] |
| **delete** | [**DateAfterCreation**](DateAfterCreation.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagementPolicyVersion.new(
  tier_to_cool: null,
  tier_to_archive: null,
  tier_to_cold: null,
  tier_to_hot: null,
  delete: null
)
```

