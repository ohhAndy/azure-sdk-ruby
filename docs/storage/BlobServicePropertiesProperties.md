# AzureRest::BlobServicePropertiesProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cors** | [**CorsRules**](CorsRules.md) |  | [optional] |
| **default_service_version** | **String** | DefaultServiceVersion indicates the default version to use for requests to the Blob service if an incoming request’s version is not specified. Possible values include version 2008-10-27 and all more recent versions. | [optional] |
| **delete_retention_policy** | [**DeleteRetentionPolicy**](DeleteRetentionPolicy.md) |  | [optional] |
| **static_website** | [**StaticWebsite**](StaticWebsite.md) |  | [optional] |
| **is_versioning_enabled** | **Boolean** | Versioning is enabled if set to true. | [optional] |
| **automatic_snapshot_policy_enabled** | **Boolean** | Deprecated in favor of isVersioningEnabled property. | [optional] |
| **change_feed** | [**ChangeFeed**](ChangeFeed.md) |  | [optional] |
| **restore_policy** | [**RestorePolicyProperties**](RestorePolicyProperties.md) |  | [optional] |
| **container_delete_retention_policy** | [**DeleteRetentionPolicy**](DeleteRetentionPolicy.md) |  | [optional] |
| **last_access_time_tracking_policy** | [**LastAccessTimeTrackingPolicy**](LastAccessTimeTrackingPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobServicePropertiesProperties.new(
  cors: null,
  default_service_version: null,
  delete_retention_policy: null,
  static_website: null,
  is_versioning_enabled: null,
  automatic_snapshot_policy_enabled: null,
  change_feed: null,
  restore_policy: null,
  container_delete_retention_policy: null,
  last_access_time_tracking_policy: null
)
```

