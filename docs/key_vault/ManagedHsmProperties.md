# AzureRest::ManagedHsmProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Universally Unique Identifier | [optional] |
| **initial_admin_object_ids** | **Array&lt;String&gt;** | Array of initial administrators object ids for this managed hsm pool. | [optional] |
| **hsm_uri** | **String** | The URI of the managed hsm pool for performing operations on keys. | [optional][readonly] |
| **enable_soft_delete** | **Boolean** | Property to specify whether the &#39;soft delete&#39; functionality is enabled for this managed HSM pool. Soft delete is enabled by default for all managed HSMs and is immutable. | [optional][default to true] |
| **soft_delete_retention_in_days** | **Integer** | Soft deleted data retention days. When you delete an HSM or a key, it will remain recoverable for the configured retention period or for a default period of 90 days. It accepts values between 7 and 90. | [optional][default to 90] |
| **enable_purge_protection** | **Boolean** | Property specifying whether protection against purge is enabled for this managed HSM pool. Setting this property to true activates protection against purge for this managed HSM pool and its content - only the Managed HSM service may initiate a hard, irrecoverable deletion. Enabling this functionality is irreversible. | [optional][default to true] |
| **create_mode** | [**CreateMode**](CreateMode.md) |  | [optional] |
| **status_message** | **String** | Resource Status Message. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **network_acls** | [**MHSMNetworkRuleSet**](MHSMNetworkRuleSet.md) |  | [optional] |
| **regions** | [**Array&lt;MHSMGeoReplicatedRegion&gt;**](MHSMGeoReplicatedRegion.md) | List of all regions associated with the managed hsm pool. | [optional] |
| **private_endpoint_connections** | [**Array&lt;MHSMPrivateEndpointConnectionItem&gt;**](MHSMPrivateEndpointConnectionItem.md) | List of private endpoint connections associated with the managed hsm pool. | [optional][readonly] |
| **public_network_access** | **String** | Control permission to the managed HSM from public networks. | [optional][default to &#39;Enabled&#39;] |
| **scheduled_purge_date** | **Time** | The scheduled purge date in UTC. | [optional][readonly] |
| **security_domain_properties** | [**ManagedHSMSecurityDomainProperties**](ManagedHSMSecurityDomainProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedHsmProperties.new(
  tenant_id: null,
  initial_admin_object_ids: null,
  hsm_uri: null,
  enable_soft_delete: null,
  soft_delete_retention_in_days: null,
  enable_purge_protection: null,
  create_mode: null,
  status_message: null,
  provisioning_state: null,
  network_acls: null,
  regions: null,
  private_endpoint_connections: null,
  public_network_access: null,
  scheduled_purge_date: null,
  security_domain_properties: null
)
```

