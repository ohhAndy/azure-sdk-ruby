# AzureSDK::MHSMPrivateEndpointConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. E.g. \&quot;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}\&quot; | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **properties** | [**MHSMPrivateEndpointConnectionProperties**](MHSMPrivateEndpointConnectionProperties.md) |  | [optional] |
| **sku** | [**ManagedHsmSku**](ManagedHsmSku.md) |  | [optional] |
| **identity** | [**ManagedServiceIdentity**](ManagedServiceIdentity.md) |  | [optional] |
| **etag** | **String** | The ETag (or entity tag) HTTP response header is an identifier for a specific version of a resource. It lets caches be more efficient and save bandwidth, as a web server does not need to resend a full response if the content was not changed.  It is a string of ASCII characters placed between double quotes, like \&quot;675af34563dc-tr34\&quot;. | [optional] |
| **location** | **String** | Represents an Azure geography region where supported resource providers live. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MHSMPrivateEndpointConnection.new(
  id: null,
  name: null,
  type: null,
  system_data: null,
  properties: null,
  sku: null,
  identity: null,
  etag: null,
  location: null,
  tags: null
)
```

