# AzureSDK::DedicatedHostGroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_fault_domain_count** | **Integer** | Number of fault domains that the host group can span. |  |
| **hosts** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of references to all dedicated hosts in the dedicated host group. | [optional][readonly] |
| **instance_view** | [**DedicatedHostGroupInstanceView**](DedicatedHostGroupInstanceView.md) |  | [optional] |
| **support_automatic_placement** | **Boolean** | Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to &#39;false&#39; when not provided. Minimum api-version: 2020-06-01. | [optional] |
| **additional_capabilities** | [**DedicatedHostGroupPropertiesAdditionalCapabilities**](DedicatedHostGroupPropertiesAdditionalCapabilities.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostGroupProperties.new(
  platform_fault_domain_count: null,
  hosts: null,
  instance_view: null,
  support_automatic_placement: null,
  additional_capabilities: null
)
```

