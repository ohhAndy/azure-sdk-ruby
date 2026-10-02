# AzureSDK::ScheduledQueryRuleResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} | [optional][readonly] |
| **name** | **String** | The name of the resource | [optional][readonly] |
| **type** | **String** | The type of the resource. E.g. \&quot;Microsoft.Compute/virtualMachines\&quot; or \&quot;Microsoft.Storage/storageAccounts\&quot; | [optional][readonly] |
| **identity** | [**Identity**](Identity.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **location** | **String** | The geo-location where the resource lives |  |
| **kind** | **String** | Indicates the type of scheduled query rule. The default is LogAlert. | [optional] |
| **etag** | **String** | The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.  | [optional][readonly] |
| **system_data** | [**SystemData**](SystemData.md) |  | [optional] |
| **properties** | [**ScheduledQueryRuleProperties**](ScheduledQueryRuleProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ScheduledQueryRuleResource.new(
  id: null,
  name: null,
  type: null,
  identity: null,
  tags: null,
  location: null,
  kind: null,
  etag: null,
  system_data: null,
  properties: null
)
```

