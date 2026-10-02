# AzureSDK::ProviderResourceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** | The resource type. | [optional] |
| **locations** | **Array&lt;String&gt;** | The collection of locations where this resource type can be created. | [optional] |
| **location_mappings** | [**Array&lt;ProviderExtendedLocation&gt;**](ProviderExtendedLocation.md) | The location mappings that are supported by this resource type. | [optional] |
| **aliases** | [**Array&lt;ModelAlias&gt;**](ModelAlias.md) | The aliases that are supported by this resource type. | [optional] |
| **api_versions** | **Array&lt;String&gt;** | The API version. | [optional] |
| **default_api_version** | **String** | The default API version. | [optional][readonly] |
| **zone_mappings** | [**Array&lt;ZoneMapping&gt;**](ZoneMapping.md) |  | [optional] |
| **api_profiles** | [**Array&lt;ApiProfile&gt;**](ApiProfile.md) | The API profiles for the resource provider. | [optional][readonly] |
| **capabilities** | **String** | The additional capabilities offered by this resource type. | [optional] |
| **properties** | **Hash&lt;String, String&gt;** | The properties. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProviderResourceType.new(
  resource_type: null,
  locations: null,
  location_mappings: null,
  aliases: null,
  api_versions: null,
  default_api_version: null,
  zone_mappings: null,
  api_profiles: null,
  capabilities: null,
  properties: null
)
```

