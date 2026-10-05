# AzureRest::ManagedClusterPodIdentityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the pod identity addon is enabled. | [optional] |
| **allow_network_plugin_kubenet** | **Boolean** | Whether pod identity is allowed to run on clusters with Kubenet networking. Running in Kubenet is disabled by default due to the security related nature of AAD Pod Identity and the risks of IP spoofing. See [using Kubenet network plugin with AAD Pod Identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity#using-kubenet-network-plugin-with-azure-active-directory-pod-managed-identities) for more information. | [optional] |
| **user_assigned_identities** | [**Array&lt;ManagedClusterPodIdentity&gt;**](ManagedClusterPodIdentity.md) | The pod identities to use in the cluster. | [optional] |
| **user_assigned_identity_exceptions** | [**Array&lt;ManagedClusterPodIdentityException&gt;**](ManagedClusterPodIdentityException.md) | The pod identity exceptions to allow. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterPodIdentityProfile.new(
  enabled: null,
  allow_network_plugin_kubenet: null,
  user_assigned_identities: null,
  user_assigned_identity_exceptions: null
)
```

