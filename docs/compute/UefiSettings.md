# AzureRest::UefiSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secure_boot_enabled** | **Boolean** | Specifies whether secure boot should be enabled on the virtual machine. Minimum api-version: 2020-12-01. | [optional] |
| **v_tpm_enabled** | **Boolean** | Specifies whether vTPM should be enabled on the virtual machine. Minimum api-version: 2020-12-01. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UefiSettings.new(
  secure_boot_enabled: null,
  v_tpm_enabled: null
)
```

