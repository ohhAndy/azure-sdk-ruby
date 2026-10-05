# AzureRest::NetworkSecurityPerimeterConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**NetworkSecurityPerimeterConfigurationProvisioningState**](NetworkSecurityPerimeterConfigurationProvisioningState.md) |  | [optional] |
| **provisioning_issues** | [**Array&lt;ProvisioningIssue&gt;**](ProvisioningIssue.md) | List of Provisioning Issues if any | [optional][readonly] |
| **network_security_perimeter** | [**NetworkSecurityPerimeter**](NetworkSecurityPerimeter.md) |  | [optional] |
| **resource_association** | [**NetworkSecurityPerimeterConfigurationPropertiesResourceAssociation**](NetworkSecurityPerimeterConfigurationPropertiesResourceAssociation.md) |  | [optional] |
| **profile** | [**NetworkSecurityPerimeterConfigurationPropertiesProfile**](NetworkSecurityPerimeterConfigurationPropertiesProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkSecurityPerimeterConfigurationProperties.new(
  provisioning_state: null,
  provisioning_issues: null,
  network_security_perimeter: null,
  resource_association: null,
  profile: null
)
```

