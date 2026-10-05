# AzureRest::LinuxOSConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sysctls** | [**SysctlConfig**](SysctlConfig.md) |  | [optional] |
| **transparent_huge_page_enabled** | **String** | Whether transparent hugepages are enabled. Valid values are &#39;always&#39;, &#39;madvise&#39;, and &#39;never&#39;. The default is &#39;always&#39;. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge). | [optional] |
| **transparent_huge_page_defrag** | **String** | Whether the kernel should make aggressive use of memory compaction to make more hugepages available. Valid values are &#39;always&#39;, &#39;defer&#39;, &#39;defer+madvise&#39;, &#39;madvise&#39; and &#39;never&#39;. The default is &#39;madvise&#39;. For more information see [Transparent Hugepages](https://www.kernel.org/doc/html/latest/admin-guide/mm/transhuge.html#admin-guide-transhuge). | [optional] |
| **swap_file_size_mb** | **Integer** | The size in MB of a swap file that will be created on each node. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LinuxOSConfig.new(
  sysctls: null,
  transparent_huge_page_enabled: null,
  transparent_huge_page_defrag: null,
  swap_file_size_mb: null
)
```

