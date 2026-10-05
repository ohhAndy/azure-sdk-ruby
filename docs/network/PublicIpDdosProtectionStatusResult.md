# AzureRest::PublicIpDdosProtectionStatusResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_address_id** | **String** | Public IP ARM resource ID | [optional] |
| **public_ip_address** | **String** | IP Address of the Public IP Resource | [optional] |
| **is_workload_protected** | [**IsWorkloadProtected**](IsWorkloadProtected.md) |  | [optional] |
| **ddos_protection_plan_id** | **String** | DDoS protection plan Resource Id of a if IP address is protected through a plan. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PublicIpDdosProtectionStatusResult.new(
  public_ip_address_id: null,
  public_ip_address: null,
  is_workload_protected: null,
  ddos_protection_plan_id: null
)
```

