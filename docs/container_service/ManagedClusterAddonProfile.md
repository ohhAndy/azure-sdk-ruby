# AzureRest::ManagedClusterAddonProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the add-on is enabled or not. |  |
| **config** | **Hash&lt;String, String&gt;** | Key-value pairs for configuring an add-on. | [optional] |
| **identity** | [**ManagedClusterAddonProfileIdentity**](ManagedClusterAddonProfileIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAddonProfile.new(
  enabled: null,
  config: null,
  identity: null
)
```

