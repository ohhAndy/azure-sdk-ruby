# AzureRest::BastionHostPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_configurations** | [**Array&lt;BastionHostIPConfiguration&gt;**](BastionHostIPConfiguration.md) | IP configuration of the Bastion Host resource. | [optional] |
| **dns_name** | **String** | FQDN for the endpoint on which bastion host is accessible. | [optional] |
| **virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **network_acls** | [**BastionHostPropertiesFormatNetworkAcls**](BastionHostPropertiesFormatNetworkAcls.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **scale_units** | **Integer** | The scale units for the Bastion Host resource. | [optional] |
| **disable_copy_paste** | **Boolean** | Enable/Disable Copy/Paste feature of the Bastion Host resource. | [optional][default to false] |
| **enable_file_copy** | **Boolean** | Enable/Disable File Copy feature of the Bastion Host resource. | [optional][default to false] |
| **enable_ip_connect** | **Boolean** | Enable/Disable IP Connect feature of the Bastion Host resource. | [optional][default to false] |
| **enable_shareable_link** | **Boolean** | Enable/Disable Shareable Link of the Bastion Host resource. | [optional][default to false] |
| **enable_tunneling** | **Boolean** | Enable/Disable Tunneling feature of the Bastion Host resource. | [optional][default to false] |
| **enable_kerberos** | **Boolean** | Enable/Disable Kerberos feature of the Bastion Host resource. | [optional][default to false] |
| **enable_session_recording** | **Boolean** | Enable/Disable Session Recording feature of the Bastion Host resource. | [optional][default to false] |
| **enable_private_only_bastion** | **Boolean** | Enable/Disable Private Only feature of the Bastion Host resource. | [optional][default to false] |
| **session_recording_configuration** | [**BastionSessionRecordingConfiguration**](BastionSessionRecordingConfiguration.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionHostPropertiesFormat.new(
  ip_configurations: null,
  dns_name: null,
  virtual_network: null,
  network_acls: null,
  provisioning_state: null,
  scale_units: null,
  disable_copy_paste: null,
  enable_file_copy: null,
  enable_ip_connect: null,
  enable_shareable_link: null,
  enable_tunneling: null,
  enable_kerberos: null,
  enable_session_recording: null,
  enable_private_only_bastion: null,
  session_recording_configuration: null
)
```

