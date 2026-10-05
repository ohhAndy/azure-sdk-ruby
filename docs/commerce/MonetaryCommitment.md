# AzureRest::MonetaryCommitment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tiered_discount** | **Hash&lt;String, Float&gt;** | The list of key/value pairs for the tiered meter rates, in the format &#39;key&#39;:&#39;value&#39; where key &#x3D; price, and value &#x3D; the corresponding discount percentage. This field is used only by offer terms of type &#39;Monetary Commitment&#39;. | [optional] |
| **excluded_meter_ids** | **Array&lt;String&gt;** | An array of meter ids that are excluded from the given offer terms. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MonetaryCommitment.new(
  tiered_discount: null,
  excluded_meter_ids: null
)
```

