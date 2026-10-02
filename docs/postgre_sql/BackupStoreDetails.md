# AzureSDK::BackupStoreDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sas_uri_list** | **Array&lt;String&gt;** | List of SAS uri of storage containers where backup data is to be streamed/copied. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BackupStoreDetails.new(
  sas_uri_list: null
)
```

