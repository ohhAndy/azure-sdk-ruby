# AzureSDK::ImageDeprecationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_state** | [**ImageState**](ImageState.md) |  | [optional] |
| **scheduled_deprecation_time** | **Time** | The time, in future, at which this image will be marked as deprecated. This scheduled time is chosen by the Publisher. | [optional] |
| **alternative_option** | [**AlternativeOption**](AlternativeOption.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImageDeprecationStatus.new(
  image_state: null,
  scheduled_deprecation_time: null,
  alternative_option: null
)
```

