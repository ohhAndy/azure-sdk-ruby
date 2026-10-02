# AzureSDK::LocalDNSOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_logging** | **String** | Log level for DNS queries in localDNS. | [optional][default to &#39;Error&#39;] |
| **protocol** | **String** | Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server. | [optional][default to &#39;PreferUDP&#39;] |
| **forward_destination** | **String** | Destination server for DNS queries to be forwarded from localDNS. | [optional][default to &#39;ClusterCoreDNS&#39;] |
| **forward_policy** | **String** | Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information. | [optional][default to &#39;Sequential&#39;] |
| **max_concurrent** | **Integer** | Maximum number of concurrent queries. See [forward plugin](https://coredns.io/plugins/forward) for more information. | [optional][default to 1000] |
| **cache_duration_in_seconds** | **Integer** | Cache max TTL in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information. | [optional][default to 3600] |
| **serve_stale_duration_in_seconds** | **Integer** | Serve stale duration in seconds. See [cache plugin](https://coredns.io/plugins/cache) for more information. | [optional][default to 3600] |
| **serve_stale** | **String** | Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information. | [optional][default to &#39;Immediate&#39;] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LocalDNSOverride.new(
  query_logging: null,
  protocol: null,
  forward_destination: null,
  forward_policy: null,
  max_concurrent: null,
  cache_duration_in_seconds: null,
  serve_stale_duration_in_seconds: null,
  serve_stale: null
)
```

