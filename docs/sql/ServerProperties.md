# AzureSDK::ServerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_login** | **String** | Administrator username for the server. Once created it cannot be changed. | [optional] |
| **administrator_login_password** | **String** | The administrator login password (required for server creation). | [optional] |
| **version** | **String** | The version of the server. | [optional] |
| **state** | **String** | The state of the server. | [optional][readonly] |
| **fully_qualified_domain_name** | **String** | The fully qualified domain name of the server. | [optional][readonly] |
| **private_endpoint_connections** | [**Array&lt;ServerPrivateEndpointConnection&gt;**](ServerPrivateEndpointConnection.md) | List of private endpoint connections on a server | [optional][readonly] |
| **minimal_tls_version** | [**MinimalTlsVersion**](MinimalTlsVersion.md) |  | [optional] |
| **public_network_access** | [**ServerPublicNetworkAccessFlag**](ServerPublicNetworkAccessFlag.md) |  | [optional] |
| **workspace_feature** | [**ServerWorkspaceFeature**](ServerWorkspaceFeature.md) |  | [optional] |
| **primary_user_assigned_identity_id** | **String** | The resource id of a user assigned identity to be used by default. | [optional] |
| **federated_client_id** | **String** | Universally Unique Identifier | [optional] |
| **key_id** | **String** | A CMK URI of the key to use for encryption. | [optional] |
| **administrators** | [**ServerExternalAdministrator**](ServerExternalAdministrator.md) |  | [optional] |
| **restrict_outbound_network_access** | [**ServerNetworkAccessFlag**](ServerNetworkAccessFlag.md) |  | [optional] |
| **is_ipv6_enabled** | [**ServerNetworkAccessFlag**](ServerNetworkAccessFlag.md) |  | [optional] |
| **external_governance_status** | [**ExternalGovernanceStatus**](ExternalGovernanceStatus.md) |  | [optional] |
| **retention_days** | **Integer** | Number of days this server will stay soft-deleted. | [optional] |
| **create_mode** | [**ServerCreateMode**](ServerCreateMode.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerProperties.new(
  administrator_login: null,
  administrator_login_password: null,
  version: null,
  state: null,
  fully_qualified_domain_name: null,
  private_endpoint_connections: null,
  minimal_tls_version: null,
  public_network_access: null,
  workspace_feature: null,
  primary_user_assigned_identity_id: null,
  federated_client_id: null,
  key_id: null,
  administrators: null,
  restrict_outbound_network_access: null,
  is_ipv6_enabled: null,
  external_governance_status: null,
  retention_days: null,
  create_mode: null
)
```

