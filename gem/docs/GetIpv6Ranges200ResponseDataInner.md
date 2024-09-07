# LinodeOpenapiClient::GetIpv6Ranges200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | __Read-only__ The region for this range of IPv6 addresses. | [optional][readonly] |
| **range** | **String** | __Read-only__ The IPv6 address of this range. | [optional][readonly] |
| **prefix** | **Integer** | The prefix length of the address. The total number of addresses that can be assigned from this range is calculated as 2&lt;sup&gt;(128 - prefix length)&lt;/sup&gt;. | [optional] |
| **route_target** | **String** | The IPv6 SLAAC address. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetIpv6Ranges200ResponseDataInner.new(
  region: us-east,
  range: 2600:3c01::,
  prefix: 64,
  route_target: 2600:3c01::ffff:ffff:ffff:ffff
)
```

