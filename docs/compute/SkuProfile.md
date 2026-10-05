# AzureRest::SkuProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_sizes** | [**Array&lt;SkuProfileVMSize&gt;**](SkuProfileVMSize.md) | Specifies the VM sizes for the virtual machine scale set. | [optional] |
| **allocation_strategy** | [**AllocationStrategy**](AllocationStrategy.md) |  | [optional] |
| **automatic_sku_migration_policy** | [**AutomaticSkuMigrationPolicy**](AutomaticSkuMigrationPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SkuProfile.new(
  vm_sizes: null,
  allocation_strategy: null,
  automatic_sku_migration_policy: null
)
```

