# AzureRest::PermissionScope

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | **String** | The permissions for the local user. Possible values include: Read (r), Write (w), Delete (d), List (l), Create (c), Modify Ownership (o), and Modify Permissions (p). |  |
| **service** | **String** | The service used by the local user, e.g. blob, file. |  |
| **resource_name** | **String** | The name of resource, normally the container name or the file share name, used by the local user. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PermissionScope.new(
  permissions: null,
  service: null,
  resource_name: null
)
```

