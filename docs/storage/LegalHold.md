# AzureSDK::LegalHold

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_legal_hold** | **Boolean** | The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold&#x3D;true for a given account. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | Each tag should be 3 to 23 alphanumeric characters and is normalized to lower case at SRP. |  |
| **allow_protected_append_writes_all** | **Boolean** | When enabled, new blocks can be written to both &#39;Append and Bock Blobs&#39; while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LegalHold.new(
  has_legal_hold: null,
  tags: null,
  allow_protected_append_writes_all: null
)
```

