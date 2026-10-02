# AzureSDK::ActiveDirectoryProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | Specifies the primary domain that the AD DNS server is authoritative for. This property is required if directoryServiceOptions is set to AD (AD DS authentication). If directoryServiceOptions is set to AADDS (Entra DS authentication), providing this property is optional, as it will be inferred automatically if omitted. If directoryServiceOptions is set to AADKERB (Entra authentication), this property is optional; it is needed to support configuration of directory- and file-level permissions via Windows File Explorer, but is not required for authentication. | [optional] |
| **net_bios_domain_name** | **String** | Specifies the NetBIOS domain name. If directoryServiceOptions is set to AD (AD DS authentication), this property is required. Otherwise, it can be omitted. | [optional] |
| **forest_name** | **String** | Specifies the Active Directory forest to get. If directoryServiceOptions is set to AD (AD DS authentication), this property is required. Otherwise, it can be omitted. | [optional] |
| **domain_guid** | **String** | Specifies the domain GUID. If directoryServiceOptions is set to AD (AD DS authentication), this property is required. If directoryServiceOptions is set to AADDS (Entra DS authentication), this property can be omitted. If directoryServiceOptions is set to AADKERB (Entra authentication), this property is optional; it is needed to support configuration of directory- and file-level permissions via Windows File Explorer, but is not required for authentication. | [optional] |
| **domain_sid** | **String** | Specifies the security identifier (SID) of the AD domain. If directoryServiceOptions is set to AD (AD DS authentication), this property is required. Otherwise, it can be omitted. | [optional] |
| **azure_storage_sid** | **String** | Specifies the security identifier (SID) for Azure Storage. If directoryServiceOptions is set to AD (AD DS authentication), this property is required. Otherwise, it can be omitted. | [optional] |
| **sam_account_name** | **String** | Specifies the Active Directory SAMAccountName for Azure Storage. If directoryServiceOptions is set to AD (AD DS authentication), this property is optional. If provided, accountType should also be provided. For directoryServiceOptions AADDS (Entra DS authentication) or AADKERB (Entra authentication), this property can be omitted. | [optional] |
| **account_type** | [**AccountType**](AccountType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ActiveDirectoryProperties.new(
  domain_name: null,
  net_bios_domain_name: null,
  forest_name: null,
  domain_guid: null,
  domain_sid: null,
  azure_storage_sid: null,
  sam_account_name: null,
  account_type: null
)
```

