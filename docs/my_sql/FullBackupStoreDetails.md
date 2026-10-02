# AzureSDK::FullBackupStoreDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sas_uri_list** | **Array&lt;String&gt;** | SASUriList of storage containers where backup data is to be streamed/copied. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FullBackupStoreDetails.new(
  sas_uri_list: null
)
```

