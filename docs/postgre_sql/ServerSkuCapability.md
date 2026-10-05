# AzureRest::ServerSkuCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Name of the compute (SKU). | [optional][readonly] |
| **v_cores** | **Integer** | vCores available for this compute. | [optional][readonly] |
| **supported_iops** | **Integer** | Maximum IOPS supported by this compute. | [optional][readonly] |
| **supported_memory_per_vcore_mb** | **Integer** | Supported memory (in MB) per virtual core assigned to this compute. | [optional][readonly] |
| **supported_zones** | **Array&lt;String&gt;** | List of supported availability zones. E.g. &#39;1&#39;, &#39;2&#39;, &#39;3&#39; | [optional][readonly] |
| **supported_ha_mode** | [**Array&lt;HighAvailabilityMode&gt;**](HighAvailabilityMode.md) | Modes of high availability supported for this compute. | [optional][readonly] |
| **supported_features** | [**Array&lt;SupportedFeature&gt;**](SupportedFeature.md) | Features supported. | [optional][readonly] |
| **security_profile** | **String** | Security profile of the compute. Indicates if it&#39;s a Confidential Compute virtual machine. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerSkuCapability.new(
  status: null,
  reason: null,
  name: null,
  v_cores: null,
  supported_iops: null,
  supported_memory_per_vcore_mb: null,
  supported_zones: null,
  supported_ha_mode: null,
  supported_features: null,
  security_profile: null
)
```

