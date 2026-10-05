# AzureRest::MHSMPrivateEndpointConnectionItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of private endpoint connection. | [optional] |
| **etag** | **String** | The ETag (or entity tag) HTTP response header is an identifier for a specific version of a resource. It lets caches be more efficient and save bandwidth, as a web server does not need to resend a full response if the content was not changed.  It is a string of ASCII characters placed between double quotes, like \&quot;675af34563dc-tr34\&quot;. | [optional] |
| **properties** | [**MHSMPrivateEndpointConnectionProperties**](MHSMPrivateEndpointConnectionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MHSMPrivateEndpointConnectionItem.new(
  id: null,
  etag: null,
  properties: null
)
```

