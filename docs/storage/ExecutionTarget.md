# AzureRest::ExecutionTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix** | **Array&lt;String&gt;** | Required list of object prefixes to be included for task execution | [optional] |
| **exclude_prefix** | **Array&lt;String&gt;** | List of object prefixes to be excluded from task execution. If there is a conflict between include and exclude prefixes, the exclude prefix will be the determining factor | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ExecutionTarget.new(
  prefix: null,
  exclude_prefix: null
)
```

