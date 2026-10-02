# AzureSDK::FastProvisioningEditionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **supported_tier** | **String** | Compute tier supporting fast provisioning. | [optional][readonly] |
| **supported_sku** | **String** | Compute name (SKU) supporting fast provisioning. | [optional][readonly] |
| **supported_storage_gb** | **Integer** | Storage size (in GB) supporting fast provisioning. | [optional][readonly] |
| **supported_server_versions** | **String** | Major version of PostgreSQL database engine supporting fast provisioning. | [optional][readonly] |
| **server_count** | **Integer** | Count of servers in cache matching this specification. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FastProvisioningEditionCapability.new(
  status: null,
  reason: null,
  supported_tier: null,
  supported_sku: null,
  supported_storage_gb: null,
  supported_server_versions: null,
  server_count: null
)
```

