# AzureSDK::WindowsConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provision_vm_agent** | **Boolean** | Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, it is set to true by default. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later. | [optional] |
| **enable_automatic_updates** | **Boolean** | Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning. | [optional] |
| **time_zone** | **String** | Specifies the time zone of the virtual machine. e.g. \&quot;Pacific Standard Time\&quot;. Possible values can be [TimeZoneInfo.Id](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.id?#System_TimeZoneInfo_Id) value from time zones returned by [TimeZoneInfo.GetSystemTimeZones](https://docs.microsoft.com/dotnet/api/system.timezoneinfo.getsystemtimezones). | [optional] |
| **additional_unattend_content** | [**Array&lt;AdditionalUnattendContent&gt;**](AdditionalUnattendContent.md) | Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup. | [optional] |
| **patch_settings** | [**PatchSettings**](PatchSettings.md) |  | [optional] |
| **win_rm** | [**WinRMConfiguration**](WinRMConfiguration.md) |  | [optional] |
| **enable_vm_agent_platform_updates** | **Boolean** | Indicates whether VMAgent Platform Updates are enabled for the Windows Virtual Machine. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::WindowsConfiguration.new(
  provision_vm_agent: null,
  enable_automatic_updates: null,
  time_zone: null,
  additional_unattend_content: null,
  patch_settings: null,
  win_rm: null,
  enable_vm_agent_platform_updates: null
)
```

