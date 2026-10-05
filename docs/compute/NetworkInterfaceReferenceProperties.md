# AzureRest::NetworkInterfaceReferenceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary** | **Boolean** | Specifies the primary network interface in case the virtual machine has more than 1 network interface. | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterfaceReferenceProperties.new(
  primary: null,
  delete_option: null
)
```

