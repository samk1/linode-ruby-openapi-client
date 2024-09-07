# LinodeOpenapiClient::PostShareIpsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ips** | **Array&lt;String&gt;** | A list of secondary Linode IPs to share with the primary Linode.  - Can include both IPv4 addresses and IPv6 ranges (omit /56 and /64 prefix lengths) - Can include both private and public IPv4 addresses. - You must have access to all of these addresses and they must be in the same Region as the primary Linode. - Enter an empty array to remove all shared IP addresses. |  |
| **linode_id** | **Integer** | The ID of the primary Linode that the addresses will be shared with. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostShareIpsRequest.new(
  ips: [&quot;192.0.2.1&quot;,&quot;2001:db8:3c4d:15::&quot;],
  linode_id: 123
)
```

