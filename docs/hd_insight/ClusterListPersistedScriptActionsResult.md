# AzureSDK::ClusterListPersistedScriptActionsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;RuntimeScriptAction&gt;**](RuntimeScriptAction.md) | The list of Persisted Script Actions. | [optional] |
| **next_link** | **String** | The link (url) to the next page of results. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ClusterListPersistedScriptActionsResult.new(
  value: null,
  next_link: null
)
```

