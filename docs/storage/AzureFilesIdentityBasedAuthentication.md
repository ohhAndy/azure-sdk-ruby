# AzureRest::AzureFilesIdentityBasedAuthentication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directory_service_options** | [**DirectoryServiceOptions**](DirectoryServiceOptions.md) |  |  |
| **active_directory_properties** | [**ActiveDirectoryProperties**](ActiveDirectoryProperties.md) |  | [optional] |
| **default_share_permission** | [**DefaultSharePermission**](DefaultSharePermission.md) |  | [optional] |
| **smb_o_auth_settings** | [**SmbOAuthSettings**](SmbOAuthSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AzureFilesIdentityBasedAuthentication.new(
  directory_service_options: null,
  active_directory_properties: null,
  default_share_permission: null,
  smb_o_auth_settings: null
)
```

