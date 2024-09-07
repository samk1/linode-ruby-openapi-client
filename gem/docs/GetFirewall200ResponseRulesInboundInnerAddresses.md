# LinodeOpenapiClient::GetFirewall200ResponseRulesInboundInnerAddresses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipv6** | **Array&lt;String&gt;** | A list of IPv6 addresses or networks. Addresses must be in IP/mask format and must not include zone_id notation as described in [RFC 4007](https://www.rfc-editor.org/rfc/rfc4007). Must not be an empty list.  If &#x60;::/0&#x60; is included in this list, all IPv6 addresses are affected by this rule. | [optional] |
| **ipv4** | **Array&lt;String&gt;** | A list of IPv4 addresses or networks. Addresses must be in IP/mask format. Must not be an empty list.  If &#x60;0.0.0.0/0&#x60; is included in this list, all IPv4 addresses are affected by this rule. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewall200ResponseRulesInboundInnerAddresses.new(
  ipv6: [&quot;2001:DB8::/128&quot;],
  ipv4: [&quot;192.0.2.0/24&quot;,&quot;198.51.100.2/32&quot;]
)
```

