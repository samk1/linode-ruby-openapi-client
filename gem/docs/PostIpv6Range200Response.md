# LinodeOpenapiClient::PostIpv6Range200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | The IPv6 network range, including subnet and prefix length. | [optional] |
| **route_target** | **String** | The route target IPV6 SLAAC address for this range. Does not include the prefix length. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostIpv6Range200Response.new(
  range: 2001:0db8::/64,
  route_target: 2001:0db8::1
)
```

