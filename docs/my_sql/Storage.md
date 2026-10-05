# AzureRest::Storage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_size_gb** | **Integer** | Max storage size allowed for a server. | [optional] |
| **iops** | **Integer** | Storage IOPS for a server. | [optional] |
| **auto_grow** | **String** | Enable Storage Auto Grow or not. | [optional][default to &#39;Disabled&#39;] |
| **log_on_disk** | **String** | Enable Log On Disk or not. | [optional][default to &#39;Disabled&#39;] |
| **storage_sku** | **String** | The sku name of the server storage. | [optional][readonly] |
| **auto_io_scaling** | **String** | Enable IO Auto Scaling or not. | [optional][default to &#39;Enabled&#39;] |
| **storage_redundancy** | **String** | The redundant type of the server storage. The parameter is used for server creation. | [optional][default to &#39;LocalRedundancy&#39;] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Storage.new(
  storage_size_gb: null,
  iops: null,
  auto_grow: null,
  log_on_disk: null,
  storage_sku: null,
  auto_io_scaling: null,
  storage_redundancy: null
)
```

