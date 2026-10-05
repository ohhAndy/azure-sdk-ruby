# AzureRest::ListQueueServices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;QueueServiceProperties&gt;**](QueueServiceProperties.md) | List of queue services returned. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ListQueueServices.new(
  value: null
)
```

