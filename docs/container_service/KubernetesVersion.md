# AzureRest::KubernetesVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | major.minor version of Kubernetes release | [optional] |
| **capabilities** | [**KubernetesVersionCapabilities**](KubernetesVersionCapabilities.md) |  | [optional] |
| **is_default** | **Boolean** | Whether this version is default. | [optional] |
| **is_preview** | **Boolean** | Whether this version is in preview mode. | [optional] |
| **patch_versions** | [**Hash&lt;String, KubernetesPatchVersion&gt;**](KubernetesPatchVersion.md) | Patch versions of Kubernetes release | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KubernetesVersion.new(
  version: null,
  capabilities: null,
  is_default: null,
  is_preview: null,
  patch_versions: null
)
```

