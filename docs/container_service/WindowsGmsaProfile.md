# AzureRest::WindowsGmsaProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable Windows gMSA. Specifies whether to enable Windows gMSA in the managed cluster. | [optional] |
| **dns_server** | **String** | Specifies the DNS server for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster. | [optional] |
| **root_domain_name** | **String** | Specifies the root domain name for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::WindowsGmsaProfile.new(
  enabled: null,
  dns_server: null,
  root_domain_name: null
)
```

