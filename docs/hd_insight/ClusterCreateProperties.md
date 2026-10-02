# AzureSDK::ClusterCreateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_version** | **String** | The version of the cluster. | [optional] |
| **os_type** | **String** | The type of operating system. | [optional] |
| **tier** | **String** | The cluster tier. | [optional][default to &#39;Standard&#39;] |
| **cluster_definition** | [**ClusterDefinition**](ClusterDefinition.md) |  | [optional] |
| **kafka_rest_properties** | [**KafkaRestProperties**](KafkaRestProperties.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **compute_profile** | [**ComputeProfile**](ComputeProfile.md) |  | [optional] |
| **storage_profile** | [**StorageProfile**](StorageProfile.md) |  | [optional] |
| **disk_encryption_properties** | [**DiskEncryptionProperties**](DiskEncryptionProperties.md) |  | [optional] |
| **encryption_in_transit_properties** | [**EncryptionInTransitProperties**](EncryptionInTransitProperties.md) |  | [optional] |
| **min_supported_tls_version** | **String** | The minimal supported tls version. | [optional] |
| **network_properties** | [**NetworkProperties**](NetworkProperties.md) |  | [optional] |
| **compute_isolation_properties** | [**ComputeIsolationProperties**](ComputeIsolationProperties.md) |  | [optional] |
| **private_link_configurations** | [**Array&lt;PrivateLinkConfiguration&gt;**](PrivateLinkConfiguration.md) | The private link configurations. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ClusterCreateProperties.new(
  cluster_version: null,
  os_type: null,
  tier: null,
  cluster_definition: null,
  kafka_rest_properties: null,
  security_profile: null,
  compute_profile: null,
  storage_profile: null,
  disk_encryption_properties: null,
  encryption_in_transit_properties: null,
  min_supported_tls_version: null,
  network_properties: null,
  compute_isolation_properties: null,
  private_link_configurations: null
)
```

