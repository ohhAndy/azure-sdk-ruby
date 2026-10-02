# AzureSDK::DedicatedHostProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_fault_domain** | **Integer** | Fault domain of the dedicated host within a dedicated host group. | [optional] |
| **auto_replace_on_failure** | **Boolean** | Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to &#39;true&#39; when not provided. | [optional] |
| **host_id** | **String** | A unique id generated and assigned to the dedicated host by the platform. Does not change throughout the lifetime of the host. | [optional][readonly] |
| **virtual_machines** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of references to all virtual machines in the Dedicated Host. | [optional][readonly] |
| **license_type** | [**DedicatedHostLicenseTypes**](DedicatedHostLicenseTypes.md) |  | [optional] |
| **provisioning_time** | **Time** | The date when the host was first provisioned. | [optional][readonly] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **instance_view** | [**DedicatedHostInstanceView**](DedicatedHostInstanceView.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time at which the Dedicated Host resource was created. Minimum api-version: 2021-11-01. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostProperties.new(
  platform_fault_domain: null,
  auto_replace_on_failure: null,
  host_id: null,
  virtual_machines: null,
  license_type: null,
  provisioning_time: null,
  provisioning_state: null,
  instance_view: null,
  time_created: null
)
```

