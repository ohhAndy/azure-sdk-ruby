# AzureRest::UsageSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Universally Unique Identifier | [optional] |
| **meter_id** | **String** | Unique ID for the resource that was consumed (aka ResourceID). | [optional] |
| **usage_start_time** | **Time** | UTC start time for the usage bucket to which this usage aggregate belongs. | [optional] |
| **usage_end_time** | **Time** | UTC end time for the usage bucket to which this usage aggregate belongs. | [optional] |
| **quantity** | **Float** | The amount of the resource consumption that occurred in this time frame. | [optional] |
| **unit** | **String** | The unit in which the usage for this resource is being counted, e.g. Hours, GB. | [optional] |
| **meter_name** | **String** | Friendly name of the resource being consumed. | [optional] |
| **meter_category** | **String** | Category of the consumed resource. | [optional] |
| **meter_sub_category** | **String** | Sub-category of the consumed resource. | [optional] |
| **meter_region** | **String** | Region of the meterId used for billing purposes | [optional] |
| **info_fields** | **Object** | Key-value pairs of instance details (legacy format). | [optional] |
| **instance_data** | **String** | Key-value pairs of instance details represented as a string. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UsageSample.new(
  subscription_id: null,
  meter_id: null,
  usage_start_time: null,
  usage_end_time: null,
  quantity: null,
  unit: null,
  meter_name: null,
  meter_category: null,
  meter_sub_category: null,
  meter_region: null,
  info_fields: null,
  instance_data: null
)
```

