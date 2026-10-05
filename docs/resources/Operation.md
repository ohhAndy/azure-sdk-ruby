# AzureRest::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the operation, as per Resource-Based Access Control (RBAC). Examples: \&quot;Microsoft.Compute/virtualMachines/write\&quot;, \&quot;Microsoft.Compute/virtualMachines/capture/action\&quot; | [optional][readonly] |
| **is_data_action** | **Boolean** | Whether the operation applies to data-plane. This is \&quot;true\&quot; for data-plane operations and \&quot;false\&quot; for ARM/control-plane operations. | [optional][readonly] |
| **display** | [**OperationDisplay**](OperationDisplay.md) |  | [optional] |
| **origin** | **String** | The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is \&quot;user,system\&quot; | [optional][readonly] |
| **action_type** | **String** | Enum. Indicates the action type. \&quot;Internal\&quot; refers to actions that are for internal only APIs. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Operation.new(
  name: null,
  is_data_action: null,
  display: null,
  origin: null,
  action_type: null
)
```

