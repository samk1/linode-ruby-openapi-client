# LinodeOpenapiClient::GetRegions200ResponseDataInnerPlacementGroupLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum_pgs_per_customer** | **Integer** | __Read-only__ The maximum number of placement groups you can have in this region. Displayed as &#x60;null&#x60; if you don&#39;t have a limit. | [optional][readonly] |
| **maximum_linodes_per_pg** | **Integer** | __Read-only__ The maximum number of compute instances you can include in a single placement group in this region. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetRegions200ResponseDataInnerPlacementGroupLimits.new(
  maximum_pgs_per_customer: 10,
  maximum_linodes_per_pg: 5
)
```

