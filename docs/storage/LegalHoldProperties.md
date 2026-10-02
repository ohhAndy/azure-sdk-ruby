# AzureSDK::LegalHoldProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_legal_hold** | **Boolean** | The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold&#x3D;true for a given account. | [optional][readonly] |
| **tags** | [**Array&lt;TagProperty&gt;**](TagProperty.md) | The list of LegalHold tags of a blob container. | [optional] |
| **protected_append_writes_history** | [**ProtectedAppendWritesHistory**](ProtectedAppendWritesHistory.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LegalHoldProperties.new(
  has_legal_hold: null,
  tags: null,
  protected_append_writes_history: null
)
```

