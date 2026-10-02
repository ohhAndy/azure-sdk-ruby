# AzureSDK::ExtensionFeatureMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extension_feature_tags** | [**Array&lt;ExtensionFeatureTag&gt;**](ExtensionFeatureTag.md) | List of additional metadata properties (e.g., compliance flags, supported features). | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ExtensionFeatureMetadata.new(
  extension_feature_tags: null
)
```

