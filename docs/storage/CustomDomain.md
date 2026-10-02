# AzureSDK::CustomDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source. |  |
| **use_sub_domain_name** | **Boolean** | Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CustomDomain.new(
  name: null,
  use_sub_domain_name: null
)
```

