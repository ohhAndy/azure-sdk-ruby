# AzureSDK::ServiceArtifactReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The service artifact reference id in the form of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/galleries/{galleryName}/serviceArtifacts/{serviceArtifactName}/vmArtifactsProfiles/{vmArtifactsProfilesName} | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceArtifactReference.new(
  id: null
)
```

