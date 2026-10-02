# AzureSDK::NamespaceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**NamespaceProvisioningState**](NamespaceProvisioningState.md) |  | [optional] |
| **labels** | **Hash&lt;String, String&gt;** | The labels of managed namespace. | [optional] |
| **annotations** | **Hash&lt;String, String&gt;** | The annotations of managed namespace. | [optional] |
| **portal_fqdn** | **String** | The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn&#39;t handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly. | [optional][readonly] |
| **default_resource_quota** | [**ResourceQuota**](ResourceQuota.md) |  | [optional] |
| **default_network_policy** | [**NetworkPolicies**](NetworkPolicies.md) |  | [optional] |
| **adoption_policy** | [**AdoptionPolicy**](AdoptionPolicy.md) |  | [optional] |
| **delete_policy** | [**DeletePolicy**](DeletePolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NamespaceProperties.new(
  provisioning_state: null,
  labels: null,
  annotations: null,
  portal_fqdn: null,
  default_resource_quota: null,
  default_network_policy: null,
  adoption_policy: null,
  delete_policy: null
)
```

