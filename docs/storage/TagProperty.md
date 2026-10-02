# AzureSDK::TagProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** | The tag value. | [optional][readonly] |
| **timestamp** | **Time** | Returns the date and time the tag was added. | [optional][readonly] |
| **object_identifier** | **String** | Returns the Object ID of the user who added the tag. | [optional][readonly] |
| **tenant_id** | **String** | Returns the Tenant ID that issued the token for the user who added the tag. | [optional][readonly] |
| **upn** | **String** | Returns the User Principal Name of the user who added the tag. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TagProperty.new(
  tag: null,
  timestamp: null,
  object_identifier: null,
  tenant_id: null,
  upn: null
)
```

