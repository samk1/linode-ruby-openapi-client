# LinodeOpenapiClient::GetIpv6Range200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix** | **Integer** | The prefix length of the address. The total number of addresses that can be assigned from this range is calculated as 2&lt;sup&gt;(128 - prefix length)&lt;/sup&gt;. | [optional] |
| **range** | **String** | __Read-only__ The IPv6 address of this range. | [optional][readonly] |
| **linodes** | **Array&lt;Integer&gt;** | __Read-only__ A list of Linodes targeted by this IPv6 range. Includes Linodes with IP sharing. | [optional][readonly] |
| **is_bgp** | **Boolean** | __Read-only__ Whether this IPv6 range is shared. | [optional][readonly] |
| **region** | **String** | __Read-only__ The region for this range of IPv6 addresses. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetIpv6Range200Response.new(
  prefix: 64,
  range: 2600:3c01::,
  linodes: [123],
  is_bgp: false,
  region: us-east
)
```

