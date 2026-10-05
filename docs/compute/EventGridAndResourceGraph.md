# AzureRest::EventGridAndResourceGraph

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable** | **Boolean** | Specifies if event grid and resource graph is enabled for Scheduled event related configurations. | [optional] |
| **scheduled_events_api_version** | **String** | Specifies the api-version to determine which Scheduled Events configuration schema version will be delivered. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EventGridAndResourceGraph.new(
  enable: null,
  scheduled_events_api_version: null
)
```

