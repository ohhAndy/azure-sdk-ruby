# AzureRest::VirtualMachineScaleSetExtensionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **force_update_tag** | **String** | If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed. | [optional] |
| **publisher** | **String** | The name of the extension handler publisher. | [optional] |
| **type** | **String** | Specifies the type of the extension; an example is \&quot;CustomScriptExtension\&quot;. | [optional] |
| **type_handler_version** | **String** | Specifies the Major.Minor version of the script handler. Customer is able to specify only the Major.Minor version of an extension, Azure platform will deliver the latest Patch.Hotfix version in the Major.Minor series. | [optional] |
| **auto_upgrade_minor_version** | **Boolean** | Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. | [optional] |
| **enable_automatic_upgrade** | **Boolean** | Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available. | [optional] |
| **settings** | **Object** | Json formatted public settings for the extension. | [optional] |
| **protected_settings** | **Object** | The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |
| **provision_after_extensions** | **Array&lt;String&gt;** | Collection of extension names after which this extension needs to be provisioned. | [optional] |
| **suppress_failures** | **Boolean** | Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false. | [optional] |
| **protected_settings_from_key_vault** | [**KeyVaultSecretReference**](KeyVaultSecretReference.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetExtensionProperties.new(
  force_update_tag: null,
  publisher: null,
  type: null,
  type_handler_version: null,
  auto_upgrade_minor_version: null,
  enable_automatic_upgrade: null,
  settings: null,
  protected_settings: null,
  provisioning_state: null,
  provision_after_extensions: null,
  suppress_failures: null,
  protected_settings_from_key_vault: null
)
```

