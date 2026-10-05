# AzureRest::AdditionalUnattendContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pass_name** | [**PassNames**](PassNames.md) |  | [optional] |
| **component_name** | [**ComponentNames**](ComponentNames.md) |  | [optional] |
| **setting_name** | [**SettingNames**](SettingNames.md) |  | [optional] |
| **content** | **String** | Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdditionalUnattendContent.new(
  pass_name: null,
  component_name: null,
  setting_name: null,
  content: null
)
```

