# AzureSDK::ManagedClusterNodeProvisioningProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**NodeProvisioningMode**](NodeProvisioningMode.md) |  | [optional] |
| **default_node_pools** | **String** | The set of default Karpenter NodePools (CRDs) configured for node provisioning. This field has no effect unless mode is &#39;Auto&#39;. Warning: Changing this from Auto to None on an existing cluster will cause the default Karpenter NodePools to be deleted, which will drain and delete the nodes associated with those pools. It is strongly recommended to not do this unless there are idle nodes ready to take the pods evicted by that action. If not specified, the default is Auto. For more information see aka.ms/aks/nap#node-pools. | [optional][default to &#39;Auto&#39;] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterNodeProvisioningProfile.new(
  mode: null,
  default_node_pools: null
)
```

