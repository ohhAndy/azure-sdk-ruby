# AzureRest::ReachabilityAnalysisRunListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ReachabilityAnalysisRun&gt;**](ReachabilityAnalysisRun.md) | The ReachabilityAnalysisRun items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ReachabilityAnalysisRunListResult.new(
  value: null,
  next_link: null
)
```

