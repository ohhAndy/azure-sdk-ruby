# AzureRest::StorageAccountPropertiesCreateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_copy_scope** | [**AllowedCopyScope**](AllowedCopyScope.md) |  | [optional] |
| **public_network_access** | [**PublicNetworkAccess**](PublicNetworkAccess.md) |  | [optional] |
| **sas_policy** | [**SasPolicy**](SasPolicy.md) |  | [optional] |
| **key_policy** | [**KeyPolicy**](KeyPolicy.md) |  | [optional] |
| **custom_domain** | [**CustomDomain**](CustomDomain.md) |  | [optional] |
| **encryption** | [**Encryption**](Encryption.md) |  | [optional] |
| **network_acls** | [**NetworkRuleSet**](NetworkRuleSet.md) |  | [optional] |
| **access_tier** | [**AccessTier**](AccessTier.md) |  | [optional] |
| **turbo_tier** | [**TurboTier**](TurboTier.md) |  | [optional] |
| **azure_files_identity_based_authentication** | [**AzureFilesIdentityBasedAuthentication**](AzureFilesIdentityBasedAuthentication.md) |  | [optional] |
| **supports_https_traffic_only** | **Boolean** | Allows https traffic only to storage service if sets to true. The default value is true since API version 2019-04-01. | [optional] |
| **is_sftp_enabled** | **Boolean** | Enables Secure File Transfer Protocol, if set to true | [optional] |
| **is_local_user_enabled** | **Boolean** | Enables local users feature, if set to true | [optional] |
| **enable_extended_groups** | **Boolean** | Enables extended group support with local users feature, if set to true | [optional] |
| **is_hns_enabled** | **Boolean** | Account HierarchicalNamespace enabled if sets to true. | [optional] |
| **large_file_shares_state** | [**LargeFileSharesState**](LargeFileSharesState.md) |  | [optional] |
| **routing_preference** | [**RoutingPreference**](RoutingPreference.md) |  | [optional] |
| **dual_stack_endpoint_preference** | [**DualStackEndpointPreference**](DualStackEndpointPreference.md) |  | [optional] |
| **allow_blob_public_access** | **Boolean** | Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property. | [optional] |
| **minimum_tls_version** | [**MinimumTlsVersion**](MinimumTlsVersion.md) |  | [optional] |
| **allow_shared_key_access** | **Boolean** | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true. | [optional] |
| **is_nfs_v3_enabled** | **Boolean** | NFS 3.0 protocol support enabled if set to true. | [optional] |
| **allow_cross_tenant_replication** | **Boolean** | Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default. | [optional] |
| **default_to_o_auth_authentication** | **Boolean** | A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property. | [optional] |
| **immutable_storage_with_versioning** | [**ImmutableStorageAccount**](ImmutableStorageAccount.md) |  | [optional] |
| **dns_endpoint_type** | [**DnsEndpointType**](DnsEndpointType.md) |  | [optional] |
| **geo_priority_replication_status** | [**GeoPriorityReplicationStatus**](GeoPriorityReplicationStatus.md) |  | [optional] |
| **allow_shared_key_access_for_services** | [**StorageAccountSharedKeyAccessProperties**](StorageAccountSharedKeyAccessProperties.md) |  | [optional] |
| **data_collaboration_policy_properties** | [**StorageDataCollaborationPolicyProperties**](StorageDataCollaborationPolicyProperties.md) |  | [optional] |
| **allow_cross_tenant_delegation_sas** | **Boolean** | Allow or disallow cross AAD tenant user delegation SAS (shared access signature). The default interpretation is false for this property. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountPropertiesCreateParameters.new(
  allowed_copy_scope: null,
  public_network_access: null,
  sas_policy: null,
  key_policy: null,
  custom_domain: null,
  encryption: null,
  network_acls: null,
  access_tier: null,
  turbo_tier: null,
  azure_files_identity_based_authentication: null,
  supports_https_traffic_only: null,
  is_sftp_enabled: null,
  is_local_user_enabled: null,
  enable_extended_groups: null,
  is_hns_enabled: null,
  large_file_shares_state: null,
  routing_preference: null,
  dual_stack_endpoint_preference: null,
  allow_blob_public_access: null,
  minimum_tls_version: null,
  allow_shared_key_access: null,
  is_nfs_v3_enabled: null,
  allow_cross_tenant_replication: null,
  default_to_o_auth_authentication: null,
  immutable_storage_with_versioning: null,
  dns_endpoint_type: null,
  geo_priority_replication_status: null,
  allow_shared_key_access_for_services: null,
  data_collaboration_policy_properties: null,
  allow_cross_tenant_delegation_sas: null
)
```

