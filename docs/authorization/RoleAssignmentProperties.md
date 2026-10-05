# AzureRest::RoleAssignmentProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** | The role assignment scope. | [optional][readonly] |
| **role_definition_id** | **String** | The role definition ID. |  |
| **principal_id** | **String** | The principal ID. |  |
| **principal_type** | **String** | The principal type of the assigned principal ID. | [optional][default to &#39;User&#39;] |
| **description** | **String** | Description of role assignment | [optional] |
| **condition** | **String** | The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase &#39;foo_storage_container&#39; | [optional] |
| **condition_version** | **String** | Version of the condition. Currently the only accepted value is &#39;2.0&#39; | [optional] |
| **created_on** | **Time** | Time it was created | [optional][readonly] |
| **updated_on** | **Time** | Time it was updated | [optional][readonly] |
| **created_by** | **String** | Id of the user who created the assignment | [optional][readonly] |
| **updated_by** | **String** | Id of the user who updated the assignment | [optional][readonly] |
| **delegated_managed_identity_resource_id** | **String** | Id of the delegated managed identity resource | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RoleAssignmentProperties.new(
  scope: null,
  role_definition_id: null,
  principal_id: null,
  principal_type: null,
  description: null,
  condition: null,
  condition_version: null,
  created_on: null,
  updated_on: null,
  created_by: null,
  updated_by: null,
  delegated_managed_identity_resource_id: null
)
```

