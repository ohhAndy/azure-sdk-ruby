# AzureRest::NetworkVirtualAppliancePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nva_sku** | [**VirtualApplianceSkuProperties**](VirtualApplianceSkuProperties.md) |  | [optional] |
| **address_prefix** | **String** | Address Prefix. | [optional][readonly] |
| **address_prefix_v6** | **String** | Address Prefix for Dual-Stack NVAs. | [optional][readonly] |
| **boot_strap_configuration_blobs** | **Array&lt;String&gt;** | BootStrapConfigurationBlobs storage URLs. | [optional] |
| **virtual_hub** | [**SubResource**](SubResource.md) |  | [optional] |
| **cloud_init_configuration_blobs** | **Array&lt;String&gt;** | CloudInitConfigurationBlob storage URLs. | [optional] |
| **cloud_init_configuration** | **String** | CloudInitConfiguration string in plain text. | [optional] |
| **virtual_appliance_asn** | **Integer** | VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported. | [optional] |
| **ssh_public_key** | **String** | Public key for SSH login. | [optional] |
| **virtual_appliance_nics** | [**Array&lt;VirtualApplianceNicProperties&gt;**](VirtualApplianceNicProperties.md) | List of Virtual Appliance Network Interfaces. | [optional][readonly] |
| **network_profile** | [**NetworkVirtualAppliancePropertiesFormatNetworkProfile**](NetworkVirtualAppliancePropertiesFormatNetworkProfile.md) |  | [optional] |
| **additional_nics** | [**Array&lt;VirtualApplianceAdditionalNicProperties&gt;**](VirtualApplianceAdditionalNicProperties.md) | Details required for Additional Network Interface. This property is not compatible with the NVA deployed in VNets. | [optional] |
| **internet_ingress_public_ips** | [**Array&lt;InternetIngressPublicIpsProperties&gt;**](InternetIngressPublicIpsProperties.md) | List of Resource Uri of Public IPs for Internet Ingress Scenario. | [optional] |
| **virtual_appliance_sites** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to VirtualApplianceSite. | [optional][readonly] |
| **virtual_appliance_connections** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to VirtualApplianceConnections. | [optional][readonly] |
| **inbound_security_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to InboundSecurityRules. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **deployment_type** | **String** | The deployment type. PartnerManaged for the SaaS NVA | [optional][readonly] |
| **delegation** | [**DelegationProperties**](DelegationProperties.md) |  | [optional] |
| **partner_managed_resource** | [**PartnerManagedResourceProperties**](PartnerManagedResourceProperties.md) |  | [optional] |
| **nva_interface_configurations** | [**Array&lt;NvaInterfaceConfigurationsProperties&gt;**](NvaInterfaceConfigurationsProperties.md) | The NVA in VNet interface configurations | [optional] |
| **address_family** | [**Array&lt;IPVersion&gt;**](IPVersion.md) | The address families to deploy the NVA in. [\&quot;IPv4\&quot;, \&quot;IPv6\&quot;] deploys a dual-stack NVA (the vHub/VNet must also be dual-stack). [\&quot;IPv4\&quot;], an empty array, or omitting the field deploys an IPv4-only NVA. The value \&quot;IPv6\&quot; may only appear in combination with \&quot;IPv4\&quot;; standalone [\&quot;IPv6\&quot;] is reserved for future use and is rejected by the service today. | [optional] |
| **private_ip_address** | **String** | A Internal Load Balancer&#39;s HA port frontend IP address. Can be used to set routes &amp; UDR to load balance traffic between NVA instances | [optional][readonly] |
| **private_ip_address_v6** | **String** | An Internal Load Balancer&#39;s HA port frontend IPv6 address. Can be used to set routes &amp; UDR to load balance traffic between NVA instances. This field appears in dual-stack NVAs. | [optional][readonly] |
| **migration_status** | [**NetworkVirtualApplianceMigrationStatus**](NetworkVirtualApplianceMigrationStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualAppliancePropertiesFormat.new(
  nva_sku: null,
  address_prefix: null,
  address_prefix_v6: null,
  boot_strap_configuration_blobs: null,
  virtual_hub: null,
  cloud_init_configuration_blobs: null,
  cloud_init_configuration: null,
  virtual_appliance_asn: null,
  ssh_public_key: null,
  virtual_appliance_nics: null,
  network_profile: null,
  additional_nics: null,
  internet_ingress_public_ips: null,
  virtual_appliance_sites: null,
  virtual_appliance_connections: null,
  inbound_security_rules: null,
  provisioning_state: null,
  deployment_type: null,
  delegation: null,
  partner_managed_resource: null,
  nva_interface_configurations: null,
  address_family: null,
  private_ip_address: null,
  private_ip_address_v6: null,
  migration_status: null
)
```

