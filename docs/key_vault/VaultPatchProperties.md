# AzureRest::VaultPatchProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | Universally Unique Identifier | [optional] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **access_policies** | [**Array&lt;AccessPolicyEntry&gt;**](AccessPolicyEntry.md) | An array of 0 to 16 identities that have access to the key vault. All identities in the array must use the same tenant ID as the key vault&#39;s tenant ID. | [optional] |
| **enabled_for_deployment** | **Boolean** | Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | [optional] |
| **enabled_for_disk_encryption** | **Boolean** | Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | [optional] |
| **enabled_for_template_deployment** | **Boolean** | Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | [optional] |
| **enable_soft_delete** | **Boolean** | Property to specify whether the &#39;soft delete&#39; functionality is enabled for this key vault. Once set to true, it cannot be reverted to false. | [optional] |
| **enable_rbac_authorization** | **Boolean** | Property that controls how data actions are authorized. When true, the key vault will use Role Based Access Control (RBAC) for authorization of data actions, and the access policies specified in vault properties will be  ignored. When false, the key vault will use the access policies specified in vault properties, and any policy stored on Azure Resource Manager will be ignored. If null or not specified, the value of this property will not change. | [optional] |
| **soft_delete_retention_in_days** | **Integer** | softDelete data retention days. It accepts &gt;&#x3D;7 and &lt;&#x3D;90. | [optional] |
| **create_mode** | [**CreateMode**](CreateMode.md) |  | [optional] |
| **enable_purge_protection** | **Boolean** | Property specifying whether protection against purge is enabled for this vault. Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion. The setting is effective only if soft delete is also enabled. Enabling this functionality is irreversible - that is, the property does not accept false as its value. | [optional] |
| **network_acls** | [**NetworkRuleSet**](NetworkRuleSet.md) |  | [optional] |
| **public_network_access** | **String** | Property to specify whether the vault will accept traffic from public internet. If set to &#39;disabled&#39; all traffic except private endpoint traffic and that that originates from trusted services will be blocked. This will override the set firewall rules, meaning that even if the firewall rules are present we will not honor the rules. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VaultPatchProperties.new(
  tenant_id: null,
  sku: null,
  access_policies: null,
  enabled_for_deployment: null,
  enabled_for_disk_encryption: null,
  enabled_for_template_deployment: null,
  enable_soft_delete: null,
  enable_rbac_authorization: null,
  soft_delete_retention_in_days: null,
  create_mode: null,
  enable_purge_protection: null,
  network_acls: null,
  public_network_access: null
)
```

