# AzureRest::ManagedClusterHTTPProxyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **http_proxy** | **String** | The HTTP proxy server endpoint to use. | [optional] |
| **https_proxy** | **String** | The HTTPS proxy server endpoint to use. | [optional] |
| **no_proxy** | **Array&lt;String&gt;** | The endpoints that should not go through proxy. | [optional] |
| **trusted_ca** | **String** | Alternative CA cert to use for connecting to proxy servers. | [optional] |
| **enabled** | **Boolean** | Whether to enable HTTP proxy. If disabled, the specified proxy configuration will be not be set on pods and nodes. If not specified, the default is true. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterHTTPProxyConfig.new(
  http_proxy: null,
  https_proxy: null,
  no_proxy: null,
  trusted_ca: null,
  enabled: null
)
```

