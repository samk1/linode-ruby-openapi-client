# LinodeOpenapiClient::GetRegions200ResponseDataInnerResolvers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipv4** | **String** | __Read-only__ The IPv4 addresses for this region&#39;s DNS resolvers, separated by commas. | [optional][readonly] |
| **ipv6** | **String** | __Read-only__ The IPv6 addresses for this region&#39;s DNS resolvers, separated by commas. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetRegions200ResponseDataInnerResolvers.new(
  ipv4: 192.0.2.0,192.0.2.1,
  ipv6: 2001:0db8::,2001:0db8::1
)
```

