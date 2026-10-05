# AzureRest::MeterInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meter_id** | **String** | Universally Unique Identifier | [optional] |
| **meter_name** | **String** | The name of the meter, within the given meter category | [optional] |
| **meter_category** | **String** | The category of the meter, e.g., &#39;Cloud services&#39;, &#39;Networking&#39;, etc.. | [optional] |
| **meter_sub_category** | **String** | The subcategory of the meter, e.g., &#39;A6 Cloud services&#39;, &#39;ExpressRoute (IXP)&#39;, etc.. | [optional] |
| **unit** | **String** | The unit in which the meter consumption is charged, e.g., &#39;Hours&#39;, &#39;GB&#39;, etc. | [optional] |
| **meter_tags** | **Array&lt;String&gt;** | Provides additional meter data. &#39;Third Party&#39; indicates a meter with no discount. Blanks indicate First Party. | [optional] |
| **meter_region** | **String** | The region in which the Azure service is available. | [optional] |
| **meter_rates** | **Hash&lt;String, Float&gt;** | The list of key/value pairs for the meter rates, in the format &#39;key&#39;:&#39;value&#39; where key &#x3D; the meter quantity, and value &#x3D; the corresponding price | [optional] |
| **effective_date** | **Time** | Indicates the date from which the meter rate is effective. | [optional] |
| **included_quantity** | **Float** | The resource quantity that is included in the offer at no cost. Consumption beyond this quantity will be charged. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MeterInfo.new(
  meter_id: null,
  meter_name: null,
  meter_category: null,
  meter_sub_category: null,
  unit: null,
  meter_tags: null,
  meter_region: null,
  meter_rates: null,
  effective_date: null,
  included_quantity: null
)
```

