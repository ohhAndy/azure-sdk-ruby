# AzureSDK::ClusterGetProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_version** | **String** | The version of the cluster. | [optional] |
| **cluster_hdp_version** | **String** | The hdp version of the cluster. | [optional] |
| **os_type** | **String** | The type of operating system. | [optional] |
| **tier** | **String** | The cluster tier. | [optional] |
| **cluster_id** | **String** | The cluster id. | [optional] |
| **cluster_definition** | [**ClusterDefinition**](ClusterDefinition.md) |  |  |
| **kafka_rest_properties** | [**KafkaRestProperties**](KafkaRestProperties.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **compute_profile** | [**ComputeProfile**](ComputeProfile.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional] |
| **created_date** | **String** | The date on which the cluster was created. | [optional] |
| **cluster_state** | **String** | The state of the cluster. | [optional] |
| **quota_info** | [**QuotaInfo**](QuotaInfo.md) |  | [optional] |
| **errors** | [**Array&lt;Errors&gt;**](Errors.md) | The list of errors. | [optional] |
| **connectivity_endpoints** | [**Array&lt;ConnectivityEndpoint&gt;**](ConnectivityEndpoint.md) | The list of connectivity endpoints. | [optional] |
| **disk_encryption_properties** | [**DiskEncryptionProperties**](DiskEncryptionProperties.md) |  | [optional] |
| **encryption_in_transit_properties** | [**EncryptionInTransitProperties**](EncryptionInTransitProperties.md) |  | [optional] |
| **storage_profile** | [**StorageProfile**](StorageProfile.md) |  | [optional] |
| **min_supported_tls_version** | **String** | The minimal supported tls version. | [optional] |
| **excluded_services_config** | [**ExcludedServicesConfig**](ExcludedServicesConfig.md) |  | [optional] |
| **network_properties** | [**NetworkProperties**](NetworkProperties.md) |  | [optional] |
| **compute_isolation_properties** | [**ComputeIsolationProperties**](ComputeIsolationProperties.md) |  | [optional] |
| **private_link_configurations** | [**Array&lt;PrivateLinkConfiguration&gt;**](PrivateLinkConfiguration.md) | The private link configurations. | [optional] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | The list of private endpoint connections. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ClusterGetProperties.new(
  cluster_version: null,
  cluster_hdp_version: null,
  os_type: null,
  tier: null,
  cluster_id: null,
  cluster_definition: null,
  kafka_rest_properties: null,
  security_profile: null,
  compute_profile: null,
  provisioning_state: null,
  created_date: null,
  cluster_state: null,
  quota_info: null,
  errors: null,
  connectivity_endpoints: null,
  disk_encryption_properties: null,
  encryption_in_transit_properties: null,
  storage_profile: null,
  min_supported_tls_version: null,
  excluded_services_config: null,
  network_properties: null,
  compute_isolation_properties: null,
  private_link_configurations: null,
  private_endpoint_connections: null
)
```

