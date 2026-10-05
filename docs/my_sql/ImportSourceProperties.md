# AzureRest::ImportSourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**ImportSourceStorageType**](ImportSourceStorageType.md) |  | [optional] |
| **storage_url** | **String** | Uri of the import source storage. | [optional] |
| **sas_token** | **String** | Sas token for accessing source storage. Read and list permissions are required for sas token. | [optional] |
| **data_dir_path** | **String** | Relative path of data directory in storage. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ImportSourceProperties.new(
  storage_type: null,
  storage_url: null,
  sas_token: null,
  data_dir_path: null
)
```

