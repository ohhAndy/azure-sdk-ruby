# AzureSDK::ContainerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The version of the deleted blob container. | [optional][readonly] |
| **deleted** | **Boolean** | Indicates whether the blob container was deleted. | [optional][readonly] |
| **deleted_time** | **Time** | Blob container deletion time. | [optional][readonly] |
| **remaining_retention_days** | **Integer** | Remaining retention days for soft deleted blob container. | [optional][readonly] |
| **default_encryption_scope** | **String** | Default the container to use specified encryption scope for all writes. | [optional] |
| **deny_encryption_scope_override** | **Boolean** | Block override of encryption scope from the container default. | [optional] |
| **public_access** | [**PublicAccess**](PublicAccess.md) |  | [optional] |
| **last_modified_time** | **Time** | Returns the date and time the container was last modified. | [optional][readonly] |
| **lease_status** | [**LeaseStatus**](LeaseStatus.md) |  | [optional] |
| **lease_state** | [**LeaseState**](LeaseState.md) |  | [optional] |
| **lease_duration** | [**LeaseDuration**](LeaseDuration.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | A name-value pair to associate with the container as metadata. | [optional] |
| **immutability_policy** | [**ImmutabilityPolicyProperties**](ImmutabilityPolicyProperties.md) |  | [optional] |
| **legal_hold** | [**LegalHoldProperties**](LegalHoldProperties.md) |  | [optional] |
| **has_legal_hold** | **Boolean** | The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold&#x3D;true for a given account. | [optional][readonly] |
| **has_immutability_policy** | **Boolean** | The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container. | [optional][readonly] |
| **immutable_storage_with_versioning** | [**ImmutableStorageWithVersioning**](ImmutableStorageWithVersioning.md) |  | [optional] |
| **enable_nfs_v3_root_squash** | **Boolean** | Enable NFSv3 root squash on blob container. | [optional] |
| **enable_nfs_v3_all_squash** | **Boolean** | Enable NFSv3 all squash on blob container. | [optional] |
| **blob_access_point_configuration** | [**BlobAccessPointConfigurationConnection**](BlobAccessPointConfigurationConnection.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerProperties.new(
  version: null,
  deleted: null,
  deleted_time: null,
  remaining_retention_days: null,
  default_encryption_scope: null,
  deny_encryption_scope_override: null,
  public_access: null,
  last_modified_time: null,
  lease_status: null,
  lease_state: null,
  lease_duration: null,
  metadata: null,
  immutability_policy: null,
  legal_hold: null,
  has_legal_hold: null,
  has_immutability_policy: null,
  immutable_storage_with_versioning: null,
  enable_nfs_v3_root_squash: null,
  enable_nfs_v3_all_squash: null,
  blob_access_point_configuration: null
)
```

