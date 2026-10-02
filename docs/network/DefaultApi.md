# AzureSDK::DefaultApi

All URIs are relative to *https://management.azure.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**available_delegations_list**](DefaultApi.md#available_delegations_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/availableDelegations |  |
| [**available_endpoint_services_list**](DefaultApi.md#available_endpoint_services_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/virtualNetworkAvailableEndpointServices |  |
| [**available_private_endpoint_types_list**](DefaultApi.md#available_private_endpoint_types_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/availablePrivateEndpointTypes |  |
| [**available_private_endpoint_types_list_by_resource_group**](DefaultApi.md#available_private_endpoint_types_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/locations/{location}/availablePrivateEndpointTypes |  |
| [**available_resource_group_delegations_list**](DefaultApi.md#available_resource_group_delegations_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/locations/{location}/availableDelegations |  |
| [**available_service_aliases_list**](DefaultApi.md#available_service_aliases_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/availableServiceAliases |  |
| [**available_service_aliases_list_by_resource_group**](DefaultApi.md#available_service_aliases_list_by_resource_group) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/locations/{location}/availableServiceAliases |  |
| [**check_dns_name_availability**](DefaultApi.md#check_dns_name_availability) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/checkDnsNameAvailability |  |
| [**inbound_security_rule_create_or_update**](DefaultApi.md#inbound_security_rule_create_or_update) | **PUT** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/inboundSecurityRules/{ruleCollectionName} |  |
| [**inbound_security_rule_get**](DefaultApi.md#inbound_security_rule_get) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/inboundSecurityRules/{ruleCollectionName} |  |
| [**public_ip_addresses_get_cloud_service_public_ip_address**](DefaultApi.md#public_ip_addresses_get_cloud_service_public_ip_address) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/roleInstances/{roleInstanceName}/networkInterfaces/{networkInterfaceName}/ipconfigurations/{ipConfigurationName}/publicipaddresses/{publicIpAddressName} |  |
| [**public_ip_addresses_list_cloud_service_public_ip_addresses**](DefaultApi.md#public_ip_addresses_list_cloud_service_public_ip_addresses) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/publicipaddresses |  |
| [**public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses**](DefaultApi.md#public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.Compute/cloudServices/{cloudServiceName}/roleInstances/{roleInstanceName}/networkInterfaces/{networkInterfaceName}/ipconfigurations/{ipConfigurationName}/publicipaddresses |  |
| [**resource_navigation_links_list**](DefaultApi.md#resource_navigation_links_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/resourceNavigationLinks |  |
| [**service_association_links_list**](DefaultApi.md#service_association_links_list) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/serviceAssociationLinks |  |
| [**service_tag_information_list**](DefaultApi.md#service_tag_information_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/serviceTagDetails |  |
| [**service_tags_list**](DefaultApi.md#service_tags_list) | **GET** /subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/serviceTags |  |
| [**subnets_prepare_network_policies**](DefaultApi.md#subnets_prepare_network_policies) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/prepareNetworkPolicies |  |
| [**subnets_unprepare_network_policies**](DefaultApi.md#subnets_unprepare_network_policies) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}/unprepareNetworkPolicies |  |
| [**virtual_networks_check_ip_address_availability**](DefaultApi.md#virtual_networks_check_ip_address_availability) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/checkIPAddressAvailability |  |
| [**virtual_networks_list_ddos_protection_status**](DefaultApi.md#virtual_networks_list_ddos_protection_status) | **POST** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/ddosProtectionStatus |  |
| [**virtual_networks_list_usage**](DefaultApi.md#virtual_networks_list_usage) | **GET** /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/usages |  |


## available_delegations_list

> <AvailableDelegationsResult> available_delegations_list(api_version, subscription_id, location)



Gets all of the available subnet delegations for this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_delegations_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_delegations_list: #{e}"
end
```

#### Using the available_delegations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableDelegationsResult>, Integer, Hash)> available_delegations_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_delegations_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableDelegationsResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_delegations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailableDelegationsResult**](AvailableDelegationsResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_endpoint_services_list

> <EndpointServicesListResult> available_endpoint_services_list(api_version, subscription_id, location)



List what values of endpoint services are available for use.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_endpoint_services_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_endpoint_services_list: #{e}"
end
```

#### Using the available_endpoint_services_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EndpointServicesListResult>, Integer, Hash)> available_endpoint_services_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_endpoint_services_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EndpointServicesListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_endpoint_services_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**EndpointServicesListResult**](EndpointServicesListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_private_endpoint_types_list

> <AvailablePrivateEndpointTypesResult> available_private_endpoint_types_list(api_version, subscription_id, location)



Returns all of the resource types that can be linked to a Private Endpoint in this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_private_endpoint_types_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_private_endpoint_types_list: #{e}"
end
```

#### Using the available_private_endpoint_types_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailablePrivateEndpointTypesResult>, Integer, Hash)> available_private_endpoint_types_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_private_endpoint_types_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailablePrivateEndpointTypesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_private_endpoint_types_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailablePrivateEndpointTypesResult**](AvailablePrivateEndpointTypesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_private_endpoint_types_list_by_resource_group

> <AvailablePrivateEndpointTypesResult> available_private_endpoint_types_list_by_resource_group(api_version, subscription_id, resource_group_name, location)



Returns all of the resource types that can be linked to a Private Endpoint in this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_private_endpoint_types_list_by_resource_group(api_version, subscription_id, resource_group_name, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_private_endpoint_types_list_by_resource_group: #{e}"
end
```

#### Using the available_private_endpoint_types_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailablePrivateEndpointTypesResult>, Integer, Hash)> available_private_endpoint_types_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_private_endpoint_types_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailablePrivateEndpointTypesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_private_endpoint_types_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailablePrivateEndpointTypesResult**](AvailablePrivateEndpointTypesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_resource_group_delegations_list

> <AvailableDelegationsResult> available_resource_group_delegations_list(api_version, subscription_id, resource_group_name, location)



Gets all of the available subnet delegations for this resource group in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_resource_group_delegations_list(api_version, subscription_id, resource_group_name, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_resource_group_delegations_list: #{e}"
end
```

#### Using the available_resource_group_delegations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableDelegationsResult>, Integer, Hash)> available_resource_group_delegations_list_with_http_info(api_version, subscription_id, resource_group_name, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_resource_group_delegations_list_with_http_info(api_version, subscription_id, resource_group_name, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableDelegationsResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_resource_group_delegations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailableDelegationsResult**](AvailableDelegationsResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_service_aliases_list

> <AvailableServiceAliasesResult> available_service_aliases_list(api_version, subscription_id, location)



Gets all available service aliases for this subscription in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_service_aliases_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_service_aliases_list: #{e}"
end
```

#### Using the available_service_aliases_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableServiceAliasesResult>, Integer, Hash)> available_service_aliases_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_service_aliases_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableServiceAliasesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_service_aliases_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailableServiceAliasesResult**](AvailableServiceAliasesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## available_service_aliases_list_by_resource_group

> <AvailableServiceAliasesResult> available_service_aliases_list_by_resource_group(api_version, subscription_id, resource_group_name, location)



Gets all available service aliases for this resource group in this region.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.available_service_aliases_list_by_resource_group(api_version, subscription_id, resource_group_name, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_service_aliases_list_by_resource_group: #{e}"
end
```

#### Using the available_service_aliases_list_by_resource_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableServiceAliasesResult>, Integer, Hash)> available_service_aliases_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)

```ruby
begin
  
  data, status_code, headers = api_instance.available_service_aliases_list_by_resource_group_with_http_info(api_version, subscription_id, resource_group_name, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableServiceAliasesResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->available_service_aliases_list_by_resource_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**AvailableServiceAliasesResult**](AvailableServiceAliasesResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_dns_name_availability

> <DnsNameAvailabilityResult> check_dns_name_availability(api_version, subscription_id, location, domain_name_label)



Checks whether a domain name in the cloudapp.azure.com zone is available for use.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
domain_name_label = 'domain_name_label_example' # String | The domain name to be verified. It must conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.

begin
  
  result = api_instance.check_dns_name_availability(api_version, subscription_id, location, domain_name_label)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_dns_name_availability: #{e}"
end
```

#### Using the check_dns_name_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DnsNameAvailabilityResult>, Integer, Hash)> check_dns_name_availability_with_http_info(api_version, subscription_id, location, domain_name_label)

```ruby
begin
  
  data, status_code, headers = api_instance.check_dns_name_availability_with_http_info(api_version, subscription_id, location, domain_name_label)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DnsNameAvailabilityResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->check_dns_name_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **domain_name_label** | **String** | The domain name to be verified. It must conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$. |  |

### Return type

[**DnsNameAvailabilityResult**](DnsNameAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## inbound_security_rule_create_or_update

> <InboundSecurityRule> inbound_security_rule_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name, parameters)



Creates or updates the specified Network Virtual Appliance Inbound Security Rules.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
rule_collection_name = 'rule_collection_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.
parameters = AzureSDK::InboundSecurityRule.new # InboundSecurityRule | Parameters supplied to the create or update Network Virtual Appliance Inbound Security Rules operation.

begin
  
  result = api_instance.inbound_security_rule_create_or_update(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name, parameters)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->inbound_security_rule_create_or_update: #{e}"
end
```

#### Using the inbound_security_rule_create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboundSecurityRule>, Integer, Hash)> inbound_security_rule_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name, parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.inbound_security_rule_create_or_update_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name, parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboundSecurityRule>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->inbound_security_rule_create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **rule_collection_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |
| **parameters** | [**InboundSecurityRule**](InboundSecurityRule.md) | Parameters supplied to the create or update Network Virtual Appliance Inbound Security Rules operation. |  |

### Return type

[**InboundSecurityRule**](InboundSecurityRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inbound_security_rule_get

> <InboundSecurityRule> inbound_security_rule_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name)



Retrieves the available specified Network Virtual Appliance Inbound Security Rules Collection.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
network_virtual_appliance_name = 'network_virtual_appliance_name_example' # String | The name of Network Virtual Appliance.
rule_collection_name = 'rule_collection_name_example' # String | The name of the resource that is unique within a resource group. This name can be used to access the resource.

begin
  
  result = api_instance.inbound_security_rule_get(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->inbound_security_rule_get: #{e}"
end
```

#### Using the inbound_security_rule_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InboundSecurityRule>, Integer, Hash)> inbound_security_rule_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name)

```ruby
begin
  
  data, status_code, headers = api_instance.inbound_security_rule_get_with_http_info(api_version, subscription_id, resource_group_name, network_virtual_appliance_name, rule_collection_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InboundSecurityRule>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->inbound_security_rule_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **network_virtual_appliance_name** | **String** | The name of Network Virtual Appliance. |  |
| **rule_collection_name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. |  |

### Return type

[**InboundSecurityRule**](InboundSecurityRule.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_get_cloud_service_public_ip_address

> <PublicIPAddress> public_ip_addresses_get_cloud_service_public_ip_address(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name, public_ip_address_name, opts)



Get the specified public IP address in a cloud service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.
role_instance_name = 'role_instance_name_example' # String | The role instance name.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
ip_configuration_name = 'ip_configuration_name_example' # String | The name of the IP configuration.
public_ip_address_name = 'public_ip_address_name_example' # String | The name of the public IP Address.
opts = {
  expand: 'expand_example' # String | Expands referenced resources.
}

begin
  
  result = api_instance.public_ip_addresses_get_cloud_service_public_ip_address(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name, public_ip_address_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_get_cloud_service_public_ip_address: #{e}"
end
```

#### Using the public_ip_addresses_get_cloud_service_public_ip_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddress>, Integer, Hash)> public_ip_addresses_get_cloud_service_public_ip_address_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name, public_ip_address_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_get_cloud_service_public_ip_address_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name, public_ip_address_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddress>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_get_cloud_service_public_ip_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |
| **role_instance_name** | **String** | The role instance name. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **ip_configuration_name** | **String** | The name of the IP configuration. |  |
| **public_ip_address_name** | **String** | The name of the public IP Address. |  |
| **expand** | **String** | Expands referenced resources. | [optional] |

### Return type

[**PublicIPAddress**](PublicIPAddress.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_list_cloud_service_public_ip_addresses

> <PublicIPAddressListResult> public_ip_addresses_list_cloud_service_public_ip_addresses(api_version, subscription_id, resource_group_name, cloud_service_name)



Gets information about all public IP addresses on a cloud service level.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.

begin
  
  result = api_instance.public_ip_addresses_list_cloud_service_public_ip_addresses(api_version, subscription_id, resource_group_name, cloud_service_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_list_cloud_service_public_ip_addresses: #{e}"
end
```

#### Using the public_ip_addresses_list_cloud_service_public_ip_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddressListResult>, Integer, Hash)> public_ip_addresses_list_cloud_service_public_ip_addresses_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_list_cloud_service_public_ip_addresses_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddressListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_list_cloud_service_public_ip_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |

### Return type

[**PublicIPAddressListResult**](PublicIPAddressListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses

> <PublicIPAddressListResult> public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name)



Gets information about all public IP addresses in a role instance IP configuration in a cloud service.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
cloud_service_name = 'cloud_service_name_example' # String | The name of the cloud service.
role_instance_name = 'role_instance_name_example' # String | The role instance name.
network_interface_name = 'network_interface_name_example' # String | The name of the network interface.
ip_configuration_name = 'ip_configuration_name_example' # String | The name of the IP configuration.

begin
  
  result = api_instance.public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses: #{e}"
end
```

#### Using the public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicIPAddressListResult>, Integer, Hash)> public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name)

```ruby
begin
  
  data, status_code, headers = api_instance.public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses_with_http_info(api_version, subscription_id, resource_group_name, cloud_service_name, role_instance_name, network_interface_name, ip_configuration_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicIPAddressListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->public_ip_addresses_list_cloud_service_role_instance_public_ip_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **cloud_service_name** | **String** | The name of the cloud service. |  |
| **role_instance_name** | **String** | The role instance name. |  |
| **network_interface_name** | **String** | The name of the network interface. |  |
| **ip_configuration_name** | **String** | The name of the IP configuration. |  |

### Return type

[**PublicIPAddressListResult**](PublicIPAddressListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resource_navigation_links_list

> <ResourceNavigationLinksListResult> resource_navigation_links_list(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)



Gets a list of resource navigation links for a subnet.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.

begin
  
  result = api_instance.resource_navigation_links_list(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->resource_navigation_links_list: #{e}"
end
```

#### Using the resource_navigation_links_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceNavigationLinksListResult>, Integer, Hash)> resource_navigation_links_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)

```ruby
begin
  
  data, status_code, headers = api_instance.resource_navigation_links_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceNavigationLinksListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->resource_navigation_links_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |

### Return type

[**ResourceNavigationLinksListResult**](ResourceNavigationLinksListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_association_links_list

> <ServiceAssociationLinksListResult> service_association_links_list(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)



Gets a list of service association links for a subnet.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.

begin
  
  result = api_instance.service_association_links_list(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_association_links_list: #{e}"
end
```

#### Using the service_association_links_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAssociationLinksListResult>, Integer, Hash)> service_association_links_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)

```ruby
begin
  
  data, status_code, headers = api_instance.service_association_links_list_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAssociationLinksListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_association_links_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |

### Return type

[**ServiceAssociationLinksListResult**](ServiceAssociationLinksListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_tag_information_list

> <ServiceTagInformationListResult> service_tag_information_list(api_version, subscription_id, location, opts)



Gets a list of service tag information resources with pagination.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.
opts = {
  no_address_prefixes: true, # Boolean | Do not return address prefixes for the tag(s).
  tag_name: 'tag_name_example' # String | Return tag information for a particular tag.
}

begin
  
  result = api_instance.service_tag_information_list(api_version, subscription_id, location, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_tag_information_list: #{e}"
end
```

#### Using the service_tag_information_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceTagInformationListResult>, Integer, Hash)> service_tag_information_list_with_http_info(api_version, subscription_id, location, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.service_tag_information_list_with_http_info(api_version, subscription_id, location, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceTagInformationListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_tag_information_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |
| **no_address_prefixes** | **Boolean** | Do not return address prefixes for the tag(s). | [optional] |
| **tag_name** | **String** | Return tag information for a particular tag. | [optional] |

### Return type

[**ServiceTagInformationListResult**](ServiceTagInformationListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_tags_list

> <ServiceTagsListResult> service_tags_list(api_version, subscription_id, location)



Gets a list of service tag information resources.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
location = 'location_example' # String | The name of the Azure region.

begin
  
  result = api_instance.service_tags_list(api_version, subscription_id, location)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_tags_list: #{e}"
end
```

#### Using the service_tags_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceTagsListResult>, Integer, Hash)> service_tags_list_with_http_info(api_version, subscription_id, location)

```ruby
begin
  
  data, status_code, headers = api_instance.service_tags_list_with_http_info(api_version, subscription_id, location)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceTagsListResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->service_tags_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **location** | **String** | The name of the Azure region. |  |

### Return type

[**ServiceTagsListResult**](ServiceTagsListResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subnets_prepare_network_policies

> subnets_prepare_network_policies(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, prepare_network_policies_request_parameters)



Prepares a subnet by applying network intent policies.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.
prepare_network_policies_request_parameters = AzureSDK::PrepareNetworkPoliciesRequest.new # PrepareNetworkPoliciesRequest | Parameters supplied to prepare subnet by applying network intent policies.

begin
  
  api_instance.subnets_prepare_network_policies(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, prepare_network_policies_request_parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->subnets_prepare_network_policies: #{e}"
end
```

#### Using the subnets_prepare_network_policies_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subnets_prepare_network_policies_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, prepare_network_policies_request_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_prepare_network_policies_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, prepare_network_policies_request_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->subnets_prepare_network_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |
| **prepare_network_policies_request_parameters** | [**PrepareNetworkPoliciesRequest**](PrepareNetworkPoliciesRequest.md) | Parameters supplied to prepare subnet by applying network intent policies. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subnets_unprepare_network_policies

> subnets_unprepare_network_policies(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, unprepare_network_policies_request_parameters)



Unprepares a subnet by removing network intent policies.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
subnet_name = 'subnet_name_example' # String | The name of the subnet.
unprepare_network_policies_request_parameters = AzureSDK::UnprepareNetworkPoliciesRequest.new # UnprepareNetworkPoliciesRequest | Parameters supplied to unprepare subnet to remove network intent policies.

begin
  
  api_instance.subnets_unprepare_network_policies(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, unprepare_network_policies_request_parameters)
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->subnets_unprepare_network_policies: #{e}"
end
```

#### Using the subnets_unprepare_network_policies_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subnets_unprepare_network_policies_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, unprepare_network_policies_request_parameters)

```ruby
begin
  
  data, status_code, headers = api_instance.subnets_unprepare_network_policies_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, subnet_name, unprepare_network_policies_request_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->subnets_unprepare_network_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **subnet_name** | **String** | The name of the subnet. |  |
| **unprepare_network_policies_request_parameters** | [**UnprepareNetworkPoliciesRequest**](UnprepareNetworkPoliciesRequest.md) | Parameters supplied to unprepare subnet to remove network intent policies. |  |

### Return type

nil (empty response body)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_networks_check_ip_address_availability

> <IPAddressAvailabilityResult> virtual_networks_check_ip_address_availability(api_version, subscription_id, resource_group_name, virtual_network_name, ip_address)



Checks whether a private IP address is available for use.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
ip_address = 'ip_address_example' # String | The private IP address to be verified.

begin
  
  result = api_instance.virtual_networks_check_ip_address_availability(api_version, subscription_id, resource_group_name, virtual_network_name, ip_address)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_check_ip_address_availability: #{e}"
end
```

#### Using the virtual_networks_check_ip_address_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IPAddressAvailabilityResult>, Integer, Hash)> virtual_networks_check_ip_address_availability_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, ip_address)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_check_ip_address_availability_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, ip_address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IPAddressAvailabilityResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_check_ip_address_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **ip_address** | **String** | The private IP address to be verified. |  |

### Return type

[**IPAddressAvailabilityResult**](IPAddressAvailabilityResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_list_ddos_protection_status

> <VirtualNetworkDdosProtectionStatusResult> virtual_networks_list_ddos_protection_status(api_version, subscription_id, resource_group_name, virtual_network_name, opts)



Gets the Ddos Protection Status of all IP Addresses under the Virtual Network

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.
opts = {
  top: 56, # Integer | The max number of ip addresses to return.
  skip_token: 'skip_token_example' # String | The skipToken that is given with nextLink.
}

begin
  
  result = api_instance.virtual_networks_list_ddos_protection_status(api_version, subscription_id, resource_group_name, virtual_network_name, opts)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_list_ddos_protection_status: #{e}"
end
```

#### Using the virtual_networks_list_ddos_protection_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkDdosProtectionStatusResult>, Integer, Hash)> virtual_networks_list_ddos_protection_status_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_list_ddos_protection_status_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkDdosProtectionStatusResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_list_ddos_protection_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |
| **top** | **Integer** | The max number of ip addresses to return. | [optional] |
| **skip_token** | **String** | The skipToken that is given with nextLink. | [optional] |

### Return type

[**VirtualNetworkDdosProtectionStatusResult**](VirtualNetworkDdosProtectionStatusResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_networks_list_usage

> <VirtualNetworkListUsageResult> virtual_networks_list_usage(api_version, subscription_id, resource_group_name, virtual_network_name)



Lists usage stats.

### Examples

```ruby
require 'time'
require 'azure_sdk'
# setup authorization
AzureSDK.configure do |config|
  # Configure OAuth2 access token for authorization: azure_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AzureSDK::DefaultApi.new
api_version = 'api_version_example' # String | The API version to use for this operation.
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the target subscription. The value must be an UUID.
resource_group_name = 'resource_group_name_example' # String | The name of the resource group. The name is case insensitive.
virtual_network_name = 'virtual_network_name_example' # String | The name of the virtual network.

begin
  
  result = api_instance.virtual_networks_list_usage(api_version, subscription_id, resource_group_name, virtual_network_name)
  p result
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_list_usage: #{e}"
end
```

#### Using the virtual_networks_list_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualNetworkListUsageResult>, Integer, Hash)> virtual_networks_list_usage_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)

```ruby
begin
  
  data, status_code, headers = api_instance.virtual_networks_list_usage_with_http_info(api_version, subscription_id, resource_group_name, virtual_network_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualNetworkListUsageResult>
rescue AzureSDK::ApiError => e
  puts "Error when calling DefaultApi->virtual_networks_list_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | The API version to use for this operation. |  |
| **subscription_id** | **String** | The ID of the target subscription. The value must be an UUID. |  |
| **resource_group_name** | **String** | The name of the resource group. The name is case insensitive. |  |
| **virtual_network_name** | **String** | The name of the virtual network. |  |

### Return type

[**VirtualNetworkListUsageResult**](VirtualNetworkListUsageResult.md)

### Authorization

[azure_auth](../README.md#azure_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

