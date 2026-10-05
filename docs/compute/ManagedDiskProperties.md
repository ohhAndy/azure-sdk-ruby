# AzureRest::ManagedDiskProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier** | **String** | Performance tier of the disk (e.g., P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks. | [optional] |
| **bursting_enabled** | **Boolean** | Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks. | [optional] |
| **performance_plus** | **Boolean** | Set this flag to true to get a boost on the performance target of the disk deployed. This flag can only be set on disk creation time and cannot be disabled after enabled. | [optional] |
| **optimized_for_frequent_attach** | **Boolean** | Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine. | [optional] |
| **availability_policy** | [**DiskAvailabilityPolicy**](DiskAvailabilityPolicy.md) |  | [optional] |
| **max_shares** | **Integer** | The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time. Applies to data disks only. | [optional] |
| **network_access_policy** | [**NetworkAccessPolicy**](NetworkAccessPolicy.md) |  | [optional] |
| **disk_access_id** | **String** | Azure resource Id of the DiskAccess resource for using private endpoints on disks. | [optional] |
| **disk_iops_read_only** | **Integer** | The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes. | [optional] |
| **disk_m_bps_read_only** | **Integer** | The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10. | [optional] |
| **logical_sector_size** | **Integer** | Logical sector size in bytes for Ultra Disks. Supported values are 512 and 4096. 4096 is the default. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedDiskProperties.new(
  tier: null,
  bursting_enabled: null,
  performance_plus: null,
  optimized_for_frequent_attach: null,
  availability_policy: null,
  max_shares: null,
  network_access_policy: null,
  disk_access_id: null,
  disk_iops_read_only: null,
  disk_m_bps_read_only: null,
  logical_sector_size: null
)
```

