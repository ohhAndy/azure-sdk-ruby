# AzureRest::TrustedAccessRoleRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verbs** | **Array&lt;String&gt;** | List of allowed verbs | [optional][readonly] |
| **api_groups** | **Array&lt;String&gt;** | List of allowed apiGroups | [optional][readonly] |
| **resources** | **Array&lt;String&gt;** | List of allowed resources | [optional][readonly] |
| **resource_names** | **Array&lt;String&gt;** | List of allowed names | [optional][readonly] |
| **non_resource_urls** | **Array&lt;String&gt;** | List of allowed nonResourceURLs | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TrustedAccessRoleRule.new(
  verbs: null,
  api_groups: null,
  resources: null,
  resource_names: null,
  non_resource_urls: null
)
```

