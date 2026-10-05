# AzureRest::ExtensionFeatureMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extension_feature_tags** | [**Array&lt;ExtensionFeatureTag&gt;**](ExtensionFeatureTag.md) | List of additional metadata properties (e.g., compliance flags, supported features). | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ExtensionFeatureMetadata.new(
  extension_feature_tags: null
)
```

