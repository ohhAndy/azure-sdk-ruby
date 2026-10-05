# AzureRest::BlobAccessPointConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_id** | **String** | The system-generated unique identifier of the configuration. | [optional][readonly] |
| **state** | [**BlobAccessPointConfigurationState**](BlobAccessPointConfigurationState.md) |  | [optional] |
| **description** | **String** | An arbitrary description of the Blob Access Point configuration. | [optional] |
| **last_connection_test_status** | [**BlobAccessPointConnectionTestStatus**](BlobAccessPointConnectionTestStatus.md) |  | [optional] |
| **last_connection_test_timestamp** | **Time** | The timestamp of the most recent connection test. | [optional][readonly] |
| **last_connection_test_error_message** | **String** | The normalized and redacted error from the most recent failed connection test. | [optional][readonly] |
| **source** | [**BlobAccessPointSourceProperties**](BlobAccessPointSourceProperties.md) |  |  |
| **provisioning_state** | [**AzureResourceManagerResourceProvisioningState**](AzureResourceManagerResourceProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointConfigurationProperties.new(
  unique_id: null,
  state: null,
  description: null,
  last_connection_test_status: null,
  last_connection_test_timestamp: null,
  last_connection_test_error_message: null,
  source: null,
  provisioning_state: null
)
```

