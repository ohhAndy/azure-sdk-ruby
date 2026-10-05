# AzureRest::StorageAccountProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **primary_endpoints** | [**Endpoints**](Endpoints.md) |  | [optional] |
| **primary_location** | **String** | Gets the location of the primary data center for the storage account. | [optional][readonly] |
| **status_of_primary** | [**AccountStatus**](AccountStatus.md) |  | [optional] |
| **last_geo_failover_time** | **Time** | Gets the timestamp of the most recent instance of a failover to the secondary location. Only the most recent timestamp is retained. This element is not returned if there has never been a failover instance. Only available if the accountType is Standard_GRS or Standard_RAGRS. | [optional][readonly] |
| **secondary_location** | **String** | Gets the location of the geo-replicated secondary for the storage account. Only available if the accountType is Standard_GRS or Standard_RAGRS. | [optional][readonly] |
| **status_of_secondary** | [**AccountStatus**](AccountStatus.md) |  | [optional] |
| **creation_time** | **Time** | Gets the creation date and time of the storage account in UTC. | [optional][readonly] |
| **custom_domain** | [**CustomDomain**](CustomDomain.md) |  | [optional] |
| **sas_policy** | [**SasPolicy**](SasPolicy.md) |  | [optional] |
| **key_policy** | [**KeyPolicy**](KeyPolicy.md) |  | [optional] |
| **key_creation_time** | [**KeyCreationTime**](KeyCreationTime.md) |  | [optional] |
| **secondary_endpoints** | [**Endpoints**](Endpoints.md) |  | [optional] |
| **encryption** | [**Encryption**](Encryption.md) |  | [optional] |
| **access_tier** | [**AccessTier**](AccessTier.md) |  | [optional] |
| **turbo_tier** | [**TurboTier**](TurboTier.md) |  | [optional] |
| **azure_files_identity_based_authentication** | [**AzureFilesIdentityBasedAuthentication**](AzureFilesIdentityBasedAuthentication.md) |  | [optional] |
| **supports_https_traffic_only** | **Boolean** | Allows https traffic only to storage service if sets to true. | [optional] |
| **network_acls** | [**NetworkRuleSet**](NetworkRuleSet.md) |  | [optional] |
| **is_sftp_enabled** | **Boolean** | Enables Secure File Transfer Protocol, if set to true | [optional] |
| **is_local_user_enabled** | **Boolean** | Enables local users feature, if set to true | [optional] |
| **enable_extended_groups** | **Boolean** | Enables extended group support with local users feature, if set to true | [optional] |
| **is_hns_enabled** | **Boolean** | Account HierarchicalNamespace enabled if sets to true. | [optional] |
| **geo_replication_stats** | [**GeoReplicationStats**](GeoReplicationStats.md) |  | [optional] |
| **failover_in_progress** | **Boolean** | If the failover is in progress, the value will be true, otherwise, it will be null. | [optional][readonly] |
| **large_file_shares_state** | [**LargeFileSharesState**](LargeFileSharesState.md) |  | [optional] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | List of private endpoint connection associated with the specified storage account | [optional][readonly] |
| **routing_preference** | [**RoutingPreference**](RoutingPreference.md) |  | [optional] |
| **dual_stack_endpoint_preference** | [**DualStackEndpointPreference**](DualStackEndpointPreference.md) |  | [optional] |
| **blob_restore_status** | [**BlobRestoreStatus**](BlobRestoreStatus.md) |  | [optional] |
| **allow_blob_public_access** | **Boolean** | Allow or disallow public access to all blobs or containers in the storage account. The default interpretation is false for this property. | [optional] |
| **minimum_tls_version** | [**MinimumTlsVersion**](MinimumTlsVersion.md) |  | [optional] |
| **allow_shared_key_access** | **Boolean** | Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is null, which is equivalent to true. | [optional] |
| **is_nfs_v3_enabled** | **Boolean** | NFS 3.0 protocol support enabled if set to true. | [optional] |
| **allow_cross_tenant_replication** | **Boolean** | Allow or disallow cross AAD tenant object replication. Set this property to true for new or existing accounts only if object replication policies will involve storage accounts in different AAD tenants. The default interpretation is false for new accounts to follow best security practices by default. | [optional] |
| **default_to_o_auth_authentication** | **Boolean** | A boolean flag which indicates whether the default authentication is OAuth or not. The default interpretation is false for this property. | [optional] |
| **public_network_access** | [**PublicNetworkAccess**](PublicNetworkAccess.md) |  | [optional] |
| **immutable_storage_with_versioning** | [**ImmutableStorageAccount**](ImmutableStorageAccount.md) |  | [optional] |
| **allowed_copy_scope** | [**AllowedCopyScope**](AllowedCopyScope.md) |  | [optional] |
| **storage_account_sku_conversion_status** | [**StorageAccountSkuConversionStatus**](StorageAccountSkuConversionStatus.md) |  | [optional] |
| **dns_endpoint_type** | [**DnsEndpointType**](DnsEndpointType.md) |  | [optional] |
| **is_sku_conversion_blocked** | **Boolean** | This property will be set to true or false on an event of ongoing migration. Default value is null. | [optional][readonly] |
| **account_migration_in_progress** | **Boolean** | If customer initiated account migration is in progress, the value will be true else it will be null. | [optional][readonly] |
| **geo_priority_replication_status** | [**GeoPriorityReplicationStatus**](GeoPriorityReplicationStatus.md) |  | [optional] |
| **allow_shared_key_access_for_services** | [**StorageAccountSharedKeyAccessProperties**](StorageAccountSharedKeyAccessProperties.md) |  | [optional] |
| **data_collaboration_policy_properties** | [**StorageDataCollaborationPolicyProperties**](StorageDataCollaborationPolicyProperties.md) |  | [optional] |
| **allow_cross_tenant_delegation_sas** | **Boolean** | Allow or disallow cross AAD tenant user delegation SAS (shared access signature). The default interpretation is false for this property. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountProperties.new(
  provisioning_state: null,
  primary_endpoints: null,
  primary_location: null,
  status_of_primary: null,
  last_geo_failover_time: null,
  secondary_location: null,
  status_of_secondary: null,
  creation_time: null,
  custom_domain: null,
  sas_policy: null,
  key_policy: null,
  key_creation_time: null,
  secondary_endpoints: null,
  encryption: null,
  access_tier: null,
  turbo_tier: null,
  azure_files_identity_based_authentication: null,
  supports_https_traffic_only: null,
  network_acls: null,
  is_sftp_enabled: null,
  is_local_user_enabled: null,
  enable_extended_groups: null,
  is_hns_enabled: null,
  geo_replication_stats: null,
  failover_in_progress: null,
  large_file_shares_state: null,
  private_endpoint_connections: null,
  routing_preference: null,
  dual_stack_endpoint_preference: null,
  blob_restore_status: null,
  allow_blob_public_access: null,
  minimum_tls_version: null,
  allow_shared_key_access: null,
  is_nfs_v3_enabled: null,
  allow_cross_tenant_replication: null,
  default_to_o_auth_authentication: null,
  public_network_access: null,
  immutable_storage_with_versioning: null,
  allowed_copy_scope: null,
  storage_account_sku_conversion_status: null,
  dns_endpoint_type: null,
  is_sku_conversion_blocked: null,
  account_migration_in_progress: null,
  geo_priority_replication_status: null,
  allow_shared_key_access_for_services: null,
  data_collaboration_policy_properties: null,
  allow_cross_tenant_delegation_sas: null
)
```

