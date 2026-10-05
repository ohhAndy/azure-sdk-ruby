# AzureRest::BlobAccessPointPrivateLinkConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_link_id_type** | [**BlobAccessPointPrivateLinkIdType**](BlobAccessPointPrivateLinkIdType.md) |  |  |
| **private_link_id** | **String** | The Azure resource ID of the backing Private Link service. |  |
| **private_link_group_id** | **String** | The Private Link group ID, when required by the backing resource. | [optional] |
| **private_link_location** | **String** | The Azure region in which the private endpoint is provisioned. |  |
| **request_message** | **String** | The connection request message sent to the Private Link owner. |  |
| **endpoint** | **String** | The backing endpoint as seen by the target of the Private Link. |  |
| **tls_verification** | [**BlobAccessPointTlsVerification**](BlobAccessPointTlsVerification.md) |  | [optional] |
| **private_endpoint_name** | **String** | The name of the private endpoint created by Azure Storage. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointPrivateLinkConnectionProperties.new(
  private_link_id_type: null,
  private_link_id: null,
  private_link_group_id: null,
  private_link_location: null,
  request_message: null,
  endpoint: null,
  tls_verification: null,
  private_endpoint_name: null
)
```

