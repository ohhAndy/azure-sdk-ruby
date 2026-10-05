# AzureRest::Endpoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **String** | Gets the blob endpoint. | [optional][readonly] |
| **queue** | **String** | Gets the queue endpoint. | [optional][readonly] |
| **table** | **String** | Gets the table endpoint. | [optional][readonly] |
| **file** | **String** | Gets the file endpoint. | [optional][readonly] |
| **web** | **String** | Gets the web endpoint. | [optional][readonly] |
| **dfs** | **String** | Gets the dfs endpoint. | [optional][readonly] |
| **microsoft_endpoints** | [**StorageAccountMicrosoftEndpoints**](StorageAccountMicrosoftEndpoints.md) |  | [optional] |
| **internet_endpoints** | [**StorageAccountInternetEndpoints**](StorageAccountInternetEndpoints.md) |  | [optional] |
| **ipv6_endpoints** | [**StorageAccountIpv6Endpoints**](StorageAccountIpv6Endpoints.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Endpoints.new(
  blob: null,
  queue: null,
  table: null,
  file: null,
  web: null,
  dfs: null,
  microsoft_endpoints: null,
  internet_endpoints: null,
  ipv6_endpoints: null
)
```

