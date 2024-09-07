# LinodeOpenapiClient::GetIpv6Pools200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | __Filterable__, __Read-only__ The region for this pool of IPv6 addresses. | [optional][readonly] |
| **range** | **String** | __Read-only__ The IPv6 range of addresses in this pool. | [optional][readonly] |
| **prefix** | **Integer** | The prefix length of the address. The total number of addresses that can be assigned from this range is calculated as 2&lt;sup&gt;(128 - prefix length)&lt;/sup&gt;. | [optional] |
| **route_target** | **String** | The last address in this block of IPv6 addresses. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetIpv6Pools200ResponseDataInner.new(
  region: us-east,
  range: 2600:3c01::2:5000:0,
  prefix: 124,
  route_target: 2600:3c01::2:5000:f
)
```

