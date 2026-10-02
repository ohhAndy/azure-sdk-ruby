# AzureSDK::VirtualMachineCaptureResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional] |
| **schema** | **String** | the schema of the captured virtual machine | [optional][readonly] |
| **content_version** | **String** | the version of the content | [optional][readonly] |
| **parameters** | **Object** | parameters of the captured virtual machine | [optional][readonly] |
| **resources** | **Array&lt;Object&gt;** | a list of resource items of the captured virtual machine | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineCaptureResult.new(
  id: null,
  schema: null,
  content_version: null,
  parameters: null,
  resources: null
)
```

