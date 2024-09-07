# LinodeOpenapiClient::GetLinodeIps200ResponseIpv6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_local** | [**GetLinodeIps200ResponseIpv6LinkLocal**](GetLinodeIps200ResponseIpv6LinkLocal.md) |  | [optional] |
| **slaac** | [**GetLinodeIps200ResponseIpv6Slaac**](GetLinodeIps200ResponseIpv6Slaac.md) |  | [optional] |
| **global** | [**Array&lt;GetIpv6Ranges200ResponseDataInner&gt;**](GetIpv6Ranges200ResponseDataInner.md) | A list of IPv6 range objects assigned to this Linode. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv6.new(
  link_local: null,
  slaac: null,
  global: null
)
```

