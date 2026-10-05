# AzureRest::SecurityPostureReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The security posture reference id in the form of /CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|latest |  |
| **exclude_extensions** | **Array&lt;String&gt;** | The list of virtual machine extension names to exclude when applying the security posture. | [optional] |
| **is_overridable** | **Boolean** | Whether the security posture can be overridden by the user. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecurityPostureReference.new(
  id: null,
  exclude_extensions: null,
  is_overridable: null
)
```

