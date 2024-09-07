# LinodeOpenapiClient::GetLinodeStats200ResponseNetv6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **out** | **Array&lt;Array&lt;Float&gt;&gt;** | Output stats for IPv6, measured in bits/s (bits/second). | [optional] |
| **_in** | **Array&lt;Array&lt;Float&gt;&gt;** | Input stats for IPv6, measured in bits/s (bits/second). | [optional] |
| **private_out** | **Array&lt;Array&lt;Float&gt;&gt;** | Private IPv6 output statistics, measured in bits/s (bits/second). | [optional] |
| **private_in** | **Array&lt;Array&lt;Float&gt;&gt;** | Private IPv6 input statistics, measured in bits/s (bits/second). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeStats200ResponseNetv6.new(
  out: null,
  _in: null,
  private_out: null,
  private_in: null
)
```

