# AzureRest::InterconnectBlockProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_machines_associated** | [**Array&lt;SubResourceReadOnly&gt;**](SubResourceReadOnly.md) | A list of all virtual machine resource ids that are associated with the Interconnect Block. | [optional][readonly] |
| **interconnect_group** | [**ApiEntityReference**](ApiEntityReference.md) |  |  |
| **interconnect_block_id** | **String** | A unique id (GUID) generated and assigned to the Interconnect Block by the platform which does not change throughout the lifetime of the resource. | [optional][readonly] |
| **provisioning_time** | **Time** | The date time when the Interconnect Block was last updated. | [optional][readonly] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **instance_view** | [**InterconnectBlockInstanceView**](InterconnectBlockInstanceView.md) |  | [optional] |
| **time_created** | **Time** | Specifies the time at which the Interconnect Block resource was created. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::InterconnectBlockProperties.new(
  virtual_machines_associated: null,
  interconnect_group: null,
  interconnect_block_id: null,
  provisioning_time: null,
  provisioning_state: null,
  instance_view: null,
  time_created: null
)
```

