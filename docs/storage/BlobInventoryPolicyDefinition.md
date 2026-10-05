# AzureRest::BlobInventoryPolicyDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**BlobInventoryPolicyFilter**](BlobInventoryPolicyFilter.md) |  | [optional] |
| **format** | [**Format**](Format.md) |  |  |
| **schedule** | [**Schedule**](Schedule.md) |  |  |
| **object_type** | [**ObjectType**](ObjectType.md) |  |  |
| **schema_fields** | **Array&lt;String&gt;** | This is a required field. This field specifies the fields and properties of the object to be included in the inventory. The Schema field value &#39;Name&#39; is always required. The valid values for this field for the &#39;Blob&#39; definition.objectType include &#39;Name, Creation-Time, Last-Modified, Content-Length, Content-MD5, BlobType, AccessTier, AccessTierChangeTime, AccessTierInferred, Tags, Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, Snapshot, VersionId, IsCurrentVersion, Metadata, LastAccessTime, Tags, Etag, ContentType, ContentEncoding, ContentLanguage, ContentCRC64, CacheControl, ContentDisposition, LeaseStatus, LeaseState, LeaseDuration, ServerEncrypted, Deleted, DeletionId, DeletedTime, RemainingRetentionDays, ImmutabilityPolicyUntilDate, ImmutabilityPolicyMode, LegalHold, CopyId, CopyStatus, CopySource, CopyProgress, CopyCompletionTime, CopyStatusDescription, CustomerProvidedKeySha256, RehydratePriority, ArchiveStatus, XmsBlobSequenceNumber, EncryptionScope, IncrementalCopy, TagCount&#39;. For Blob object type schema field value &#39;DeletedTime&#39; is applicable only for Hns enabled accounts. The valid values for &#39;Container&#39; definition.objectType include &#39;Name, Last-Modified, Metadata, LeaseStatus, LeaseState, LeaseDuration, PublicAccess, HasImmutabilityPolicy, HasLegalHold, Etag, DefaultEncryptionScope, DenyEncryptionScopeOverride, ImmutableStorageWithVersioningEnabled, Deleted, Version, DeletedTime, RemainingRetentionDays&#39;. Schema field values &#39;Expiry-Time, hdi_isfolder, Owner, Group, Permissions, Acl, DeletionId&#39; are valid only for Hns enabled accounts.Schema field values &#39;Tags, TagCount&#39; are only valid for Non-Hns accounts. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobInventoryPolicyDefinition.new(
  filters: null,
  format: null,
  schedule: null,
  object_type: null,
  schema_fields: null
)
```

