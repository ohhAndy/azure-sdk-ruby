# AzureRest::ManagedHsmKeyReleasePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | Content type and version of key release policy | [optional][default to &#39;application/json; charset&#x3D;utf-8&#39;] |
| **data** | **String** | Blob encoding the policy rules under which the key can be released. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedHsmKeyReleasePolicy.new(
  content_type: null,
  data: null
)
```

