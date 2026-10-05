# AzureRest::ManagedClusterSecurityProfileDefenderSecurityGating

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable Defender security gating. When enabled, the gating feature scans container images and audits or blocks deployment of images that do not meet security standards according to configured security rules. For more information, see https://aka.ms/KubernetesDefenderAuditRule. | [optional] |
| **identities** | [**Array&lt;ManagedClusterSecurityProfileDefenderSecurityGatingIdentity&gt;**](ManagedClusterSecurityProfileDefenderSecurityGatingIdentity.md) | List of identities that the admission controller uses to pull security artifacts from registries. These are the same identities used by the cluster to pull container images. For more information on configuring this identity, see https://learn.microsoft.com/en-us/azure/defender-for-cloud/gated-deployment-infrastructure-as-code. | [optional] |
| **allow_secret_access** | **Boolean** | In use only while registry access is granted by secret rather than managed identity. Sets whether to grant the Defender gating agent access to cluster secrets for pulling images from registries. If secret access is denied and the registry requires pull secrets, the add-on will not perform image validation. Default value is false. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterSecurityProfileDefenderSecurityGating.new(
  enabled: null,
  identities: null,
  allow_secret_access: null
)
```

