# AzureSDK::CorsRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_origins** | **Array&lt;String&gt;** | Required if CorsRule element is present. A list of origin domains that will be allowed via CORS, or \&quot;*\&quot; to allow all domains |  |
| **allowed_methods** | [**Array&lt;AllowedMethods&gt;**](AllowedMethods.md) | Required if CorsRule element is present. A list of HTTP methods that are allowed to be executed by the origin. |  |
| **max_age_in_seconds** | **Integer** | Required if CorsRule element is present. The number of seconds that the client/browser should cache a preflight response. |  |
| **exposed_headers** | **Array&lt;String&gt;** | Required if CorsRule element is present. A list of response headers to expose to CORS clients. |  |
| **allowed_headers** | **Array&lt;String&gt;** | Required if CorsRule element is present. A list of headers allowed to be part of the cross-origin request. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CorsRule.new(
  allowed_origins: null,
  allowed_methods: null,
  max_age_in_seconds: null,
  exposed_headers: null,
  allowed_headers: null
)
```

