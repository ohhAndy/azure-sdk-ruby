# AzureRest::ObjectRecommendationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **initial_recommended_time** | **Time** | Creation time (UTC) of this recommendation. | [optional] |
| **last_recommended_time** | **Time** | Last time (UTC) that this recommendation was produced. | [optional] |
| **times_recommended** | **Integer** | Number of times this recommendation has been produced. | [optional] |
| **improved_query_ids** | **Array&lt;Integer&gt;** | List of identifiers for all queries identified as targets for improvement if the recommendation is applied. The list is only populated for CREATE INDEX recommendations. | [optional] |
| **recommendation_reason** | **String** | Reason for this recommendation. | [optional] |
| **current_state** | **String** | Current state. | [optional] |
| **recommendation_type** | [**RecommendationTypeEnum**](RecommendationTypeEnum.md) |  | [optional] |
| **implementation_details** | [**ObjectRecommendationPropertiesImplementationDetails**](ObjectRecommendationPropertiesImplementationDetails.md) |  | [optional] |
| **analyzed_workload** | [**ObjectRecommendationPropertiesAnalyzedWorkload**](ObjectRecommendationPropertiesAnalyzedWorkload.md) |  | [optional] |
| **estimated_impact** | [**Array&lt;ImpactRecord&gt;**](ImpactRecord.md) | Estimated impact of this recommended action. | [optional][readonly] |
| **details** | [**ObjectRecommendationDetails**](ObjectRecommendationDetails.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ObjectRecommendationProperties.new(
  initial_recommended_time: null,
  last_recommended_time: null,
  times_recommended: null,
  improved_query_ids: null,
  recommendation_reason: null,
  current_state: null,
  recommendation_type: null,
  implementation_details: null,
  analyzed_workload: null,
  estimated_impact: null,
  details: null
)
```

