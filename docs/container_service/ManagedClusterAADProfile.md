# AzureRest::ManagedClusterAADProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **managed** | **Boolean** | Whether to enable managed AAD. | [optional] |
| **enable_azure_rbac** | **Boolean** | Whether to enable Azure RBAC for Kubernetes authorization. | [optional] |
| **admin_group_object_ids** | **Array&lt;String&gt;** | The list of AAD group object IDs that will have admin role of the cluster. | [optional] |
| **client_app_id** | **String** | (DEPRECATED) The client AAD application ID. Learn more at https://aka.ms/aks/aad-legacy. | [optional] |
| **server_app_id** | **String** | (DEPRECATED) The server AAD application ID. Learn more at https://aka.ms/aks/aad-legacy. | [optional] |
| **server_app_secret** | **String** | (DEPRECATED) The server AAD application secret. Learn more at https://aka.ms/aks/aad-legacy. | [optional] |
| **tenant_id** | **String** | The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAADProfile.new(
  managed: null,
  enable_azure_rbac: null,
  admin_group_object_ids: null,
  client_app_id: null,
  server_app_id: null,
  server_app_secret: null,
  tenant_id: null
)
```

