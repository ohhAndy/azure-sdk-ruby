# AzureRest::VirtualMachineImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource Id | [optional] |
| **name** | **String** | The name of the resource. |  |
| **location** | **String** | The supported Azure location of the resource. |  |
| **tags** | **Hash&lt;String, String&gt;** | Specifies the tags that are assigned to the virtual machine. For more information about using tags, see [Using tags to organize your Azure resources](https://docs.microsoft.com/azure/azure-resource-manager/resource-group-using-tags.md). | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **properties** | [**VirtualMachineImageProperties**](VirtualMachineImageProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineImage.new(
  id: null,
  name: null,
  location: null,
  tags: null,
  extended_location: null,
  properties: null
)
```

