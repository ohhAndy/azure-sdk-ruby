# AzureRest::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the operation, as per Resource-Based Access Control (RBAC). Examples: \&quot;Microsoft.Compute/virtualMachines/write\&quot;, \&quot;Microsoft.Compute/virtualMachines/capture/action\&quot; | [optional][readonly] |
| **display** | [**OperationDisplay**](OperationDisplay.md) |  | [optional] |
| **origin** | [**Origin**](Origin.md) |  | [optional] |
| **properties** | **Hash&lt;String, Object&gt;** | Additional descriptions for the operation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Operation.new(
  name: null,
  display: null,
  origin: null,
  properties: null
)
```

