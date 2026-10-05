# AzureRest::ObjectRecommendationPropertiesAnalyzedWorkload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** | Start time (UTC) of the workload analyzed. | [optional] |
| **end_time** | **Time** | End time (UTC) of the workload analyzed. | [optional] |
| **query_count** | **Integer** | Number of queries from the workload that were examined to produce this recommendation. For DROP INDEX recommendations it&#39;s 0 (zero). | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ObjectRecommendationPropertiesAnalyzedWorkload.new(
  start_time: null,
  end_time: null,
  query_count: null
)
```

