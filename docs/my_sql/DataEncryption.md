# AzureSDK::DataEncryption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary_user_assigned_identity_id** | **String** | Primary user identity resource id | [optional] |
| **primary_key_uri** | **String** | Primary key uri | [optional] |
| **geo_backup_user_assigned_identity_id** | **String** | Geo backup user identity resource id as identity can&#39;t cross region, need identity in same region as geo backup | [optional] |
| **geo_backup_key_uri** | **String** | Geo backup key uri as key vault can&#39;t cross region, need cmk in same region as geo backup | [optional] |
| **type** | [**DataEncryptionType**](DataEncryptionType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DataEncryption.new(
  primary_user_assigned_identity_id: null,
  primary_key_uri: null,
  geo_backup_user_assigned_identity_id: null,
  geo_backup_key_uri: null,
  type: null
)
```

