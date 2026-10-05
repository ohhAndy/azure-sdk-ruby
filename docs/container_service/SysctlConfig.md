# AzureRest::SysctlConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **net_core_somaxconn** | **Integer** | Sysctl setting net.core.somaxconn. | [optional] |
| **net_core_netdev_max_backlog** | **Integer** | Sysctl setting net.core.netdev_max_backlog. | [optional] |
| **net_core_rmem_default** | **Integer** | Sysctl setting net.core.rmem_default. | [optional] |
| **net_core_rmem_max** | **Integer** | Sysctl setting net.core.rmem_max. | [optional] |
| **net_core_wmem_default** | **Integer** | Sysctl setting net.core.wmem_default. | [optional] |
| **net_core_wmem_max** | **Integer** | Sysctl setting net.core.wmem_max. | [optional] |
| **net_core_optmem_max** | **Integer** | Sysctl setting net.core.optmem_max. | [optional] |
| **net_ipv4_tcp_max_syn_backlog** | **Integer** | Sysctl setting net.ipv4.tcp_max_syn_backlog. | [optional] |
| **net_ipv4_tcp_max_tw_buckets** | **Integer** | Sysctl setting net.ipv4.tcp_max_tw_buckets. | [optional] |
| **net_ipv4_tcp_fin_timeout** | **Integer** | Sysctl setting net.ipv4.tcp_fin_timeout. | [optional] |
| **net_ipv4_tcp_keepalive_time** | **Integer** | Sysctl setting net.ipv4.tcp_keepalive_time. | [optional] |
| **net_ipv4_tcp_keepalive_probes** | **Integer** | Sysctl setting net.ipv4.tcp_keepalive_probes. | [optional] |
| **net_ipv4_tcpkeepalive_intvl** | **Integer** | Sysctl setting net.ipv4.tcp_keepalive_intvl. | [optional] |
| **net_ipv4_tcp_tw_reuse** | **Boolean** | Sysctl setting net.ipv4.tcp_tw_reuse. | [optional] |
| **net_ipv4_ip_local_port_range** | **String** | Sysctl setting net.ipv4.ip_local_port_range. | [optional] |
| **net_ipv4_neigh_default_gc_thresh1** | **Integer** | Sysctl setting net.ipv4.neigh.default.gc_thresh1. | [optional] |
| **net_ipv4_neigh_default_gc_thresh2** | **Integer** | Sysctl setting net.ipv4.neigh.default.gc_thresh2. | [optional] |
| **net_ipv4_neigh_default_gc_thresh3** | **Integer** | Sysctl setting net.ipv4.neigh.default.gc_thresh3. | [optional] |
| **net_netfilter_nf_conntrack_max** | **Integer** | Sysctl setting net.netfilter.nf_conntrack_max. | [optional] |
| **net_netfilter_nf_conntrack_buckets** | **Integer** | Sysctl setting net.netfilter.nf_conntrack_buckets. | [optional] |
| **fs_inotify_max_user_watches** | **Integer** | Sysctl setting fs.inotify.max_user_watches. | [optional] |
| **fs_file_max** | **Integer** | Sysctl setting fs.file-max. | [optional] |
| **fs_aio_max_nr** | **Integer** | Sysctl setting fs.aio-max-nr. | [optional] |
| **fs_nr_open** | **Integer** | Sysctl setting fs.nr_open. | [optional] |
| **kernel_threads_max** | **Integer** | Sysctl setting kernel.threads-max. | [optional] |
| **vm_max_map_count** | **Integer** | Sysctl setting vm.max_map_count. | [optional] |
| **vm_swappiness** | **Integer** | Sysctl setting vm.swappiness. | [optional] |
| **vm_vfs_cache_pressure** | **Integer** | Sysctl setting vm.vfs_cache_pressure. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SysctlConfig.new(
  net_core_somaxconn: null,
  net_core_netdev_max_backlog: null,
  net_core_rmem_default: null,
  net_core_rmem_max: null,
  net_core_wmem_default: null,
  net_core_wmem_max: null,
  net_core_optmem_max: null,
  net_ipv4_tcp_max_syn_backlog: null,
  net_ipv4_tcp_max_tw_buckets: null,
  net_ipv4_tcp_fin_timeout: null,
  net_ipv4_tcp_keepalive_time: null,
  net_ipv4_tcp_keepalive_probes: null,
  net_ipv4_tcpkeepalive_intvl: null,
  net_ipv4_tcp_tw_reuse: null,
  net_ipv4_ip_local_port_range: null,
  net_ipv4_neigh_default_gc_thresh1: null,
  net_ipv4_neigh_default_gc_thresh2: null,
  net_ipv4_neigh_default_gc_thresh3: null,
  net_netfilter_nf_conntrack_max: null,
  net_netfilter_nf_conntrack_buckets: null,
  fs_inotify_max_user_watches: null,
  fs_file_max: null,
  fs_aio_max_nr: null,
  fs_nr_open: null,
  kernel_threads_max: null,
  vm_max_map_count: null,
  vm_swappiness: null,
  vm_vfs_cache_pressure: null
)
```

