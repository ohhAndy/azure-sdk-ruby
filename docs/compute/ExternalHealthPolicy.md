# AzureRest::ExternalHealthPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | If true, external health is enabled for this scale set. Cannot be set to true on instances where another health monitoring source is active (ApplicationHealth extension or SLB). Defaults to false. | [optional] |
| **expiry_duration** | **String** | Defines how long the health status set by External Health API will last on the VM. If a signal is not received/updated within this time, the VM Health will be marked as \&quot;unknown\&quot;. Uses the ISO 8601 format. Minimum: 5 minutes (PT5M), Maximum: 3 hours (PT3H). | [optional] |
| **grace_period** | **String** | Grace period for newly created VMs or when the External Health policy is first applied on VMSS. Uses the ISO 8601 format. Minimum: 5 minutes (PT5M), Maximum: 4 hours (PT4H). | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ExternalHealthPolicy.new(
  enabled: null,
  expiry_duration: null,
  grace_period: null
)
```

