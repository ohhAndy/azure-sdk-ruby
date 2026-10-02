# AzureSDK::ObjectRecommendationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** | Database name. | [optional] |
| **schema** | **String** | Schema name. | [optional] |
| **table** | **String** | Table name. | [optional] |
| **index_type** | **String** | Index type. | [optional] |
| **index_name** | **String** | Index name. | [optional] |
| **index_columns** | **Array&lt;String&gt;** | Index columns. | [optional] |
| **included_columns** | **Array&lt;String&gt;** | Index included columns. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ObjectRecommendationDetails.new(
  database_name: null,
  schema: null,
  table: null,
  index_type: null,
  index_name: null,
  index_columns: null,
  included_columns: null
)
```

