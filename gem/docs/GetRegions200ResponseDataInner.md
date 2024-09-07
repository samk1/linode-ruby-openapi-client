# LinodeOpenapiClient::GetRegions200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | __Read-only__ The unique ID of this Region. | [optional][readonly] |
| **site_type** | **String** | __Filterable__, __Read-only__ This region&#39;s site type. A &#x60;core&#x60; region indicates a traditional cloud computing [region](https://www.linode.com/docs/products/platform/get-started/guides/choose-a-data-center/#product-availability) that offers all compute services. A &#x60;distributed&#x60; region indicates sites that are globally dispersed to be closer to end users and workloads. These regions offer limited services. | [optional][readonly] |
| **country** | **String** | __Filterable__, __Read-only__ The country where this Region resides. | [optional][readonly] |
| **resolvers** | [**GetRegions200ResponseDataInnerResolvers**](GetRegions200ResponseDataInnerResolvers.md) |  | [optional] |
| **status** | **String** | __Read-only__ This region&#39;s current operational status. | [optional][readonly] |
| **placement_group_limits** | [**GetRegions200ResponseDataInnerPlacementGroupLimits**](GetRegions200ResponseDataInnerPlacementGroupLimits.md) |  | [optional] |
| **label** | **String** | __Read-only__ Detailed location information for this Region, including city, state or region, and country. | [optional][readonly] |
| **capabilities** | **Array&lt;String&gt;** | __Read-only__ A list of capabilities of this region. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetRegions200ResponseDataInner.new(
  id: us-east,
  site_type: core,
  country: us,
  resolvers: null,
  status: ok,
  placement_group_limits: null,
  label: Newark, NJ, USA,
  capabilities: [&quot;Linodes&quot;,&quot;NodeBalancers&quot;,&quot;Block Storage&quot;,&quot;Object Storage&quot;,&quot;Placement Groups&quot;]
)
```

