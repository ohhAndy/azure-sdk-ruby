# AzureSDK::ManagedClusterSecurityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **defender** | [**ManagedClusterSecurityProfileDefender**](ManagedClusterSecurityProfileDefender.md) |  | [optional] |
| **azure_key_vault_kms** | [**AzureKeyVaultKms**](AzureKeyVaultKms.md) |  | [optional] |
| **kubernetes_resource_object_encryption_profile** | [**KubernetesResourceObjectEncryptionProfile**](KubernetesResourceObjectEncryptionProfile.md) |  | [optional] |
| **workload_identity** | [**ManagedClusterSecurityProfileWorkloadIdentity**](ManagedClusterSecurityProfileWorkloadIdentity.md) |  | [optional] |
| **image_cleaner** | [**ManagedClusterSecurityProfileImageCleaner**](ManagedClusterSecurityProfileImageCleaner.md) |  | [optional] |
| **custom_ca_trust_certificates** | **Array&lt;String&gt;** | A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority). | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterSecurityProfile.new(
  defender: null,
  azure_key_vault_kms: null,
  kubernetes_resource_object_encryption_profile: null,
  workload_identity: null,
  image_cleaner: null,
  custom_ca_trust_certificates: null
)
```

