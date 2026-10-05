# AzureRest::SecurityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **directory_type** | **String** | The directory type. | [optional] |
| **domain** | **String** | The organization&#39;s active directory domain. | [optional] |
| **organizational_unit_dn** | **String** | The organizational unit within the Active Directory to place the cluster and service accounts. | [optional] |
| **ldaps_urls** | **Array&lt;String&gt;** | The LDAPS protocol URLs to communicate with the Active Directory. | [optional] |
| **domain_username** | **String** | The domain user account that will have admin privileges on the cluster. | [optional] |
| **domain_user_password** | **String** | The domain admin password. | [optional] |
| **cluster_users_group_dns** | **Array&lt;String&gt;** | Optional. The Distinguished Names for cluster user groups | [optional] |
| **aadds_resource_id** | **String** | The resource ID of the user&#39;s Azure Active Directory Domain Service. | [optional] |
| **msi_resource_id** | **String** | User assigned identity that has permissions to read and create cluster-related artifacts in the user&#39;s AADDS. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecurityProfile.new(
  directory_type: null,
  domain: null,
  organizational_unit_dn: null,
  ldaps_urls: null,
  domain_username: null,
  domain_user_password: null,
  cluster_users_group_dns: null,
  aadds_resource_id: null,
  msi_resource_id: null
)
```

