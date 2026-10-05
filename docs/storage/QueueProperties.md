# AzureRest::QueueProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Hash&lt;String, String&gt;** | A name-value pair that represents queue metadata. | [optional] |
| **approximate_message_count** | **Integer** | Integer indicating an approximate number of messages in the queue. This number is not lower than the actual number of messages in the queue, but could be higher. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::QueueProperties.new(
  metadata: null,
  approximate_message_count: null
)
```

