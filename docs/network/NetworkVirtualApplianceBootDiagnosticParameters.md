# AzureRest::NetworkVirtualApplianceBootDiagnosticParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_id** | **Integer** | The network virtual appliance instance id for which boot diagnostic logs is being requested | [optional] |
| **serial_console_storage_sas_url** | **String** | Specifies the sas-url to the storage blob into which serial console logs for the requested instance will be written | [optional] |
| **console_screenshot_storage_sas_url** | **String** | Specifies the sas-url to the storage blob into which console screen shot for the requested instance will be written | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualApplianceBootDiagnosticParameters.new(
  instance_id: null,
  serial_console_storage_sas_url: null,
  console_screenshot_storage_sas_url: null
)
```

