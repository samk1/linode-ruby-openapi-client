# LinodeOpenapiClient::GetLinodeStatsByYearMonth200ResponseNetv4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_out** | **Array&lt;Array&lt;Float&gt;&gt;** | Private IPv4 output statistics, measured in bits/s (bits/second). | [optional] |
| **private_in** | **Array&lt;Array&lt;Float&gt;&gt;** | Private IPv4 input statistics, measured in bits/s (bits/second). | [optional] |
| **out** | **Array&lt;Array&lt;Float&gt;&gt;** | Output stats for IPv4, measured in bits/s (bits/second). | [optional] |
| **_in** | **Array&lt;Array&lt;Float&gt;&gt;** | Input stats for IPv4, measured in bits/s (bits/second). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeStatsByYearMonth200ResponseNetv4.new(
  private_out: null,
  private_in: null,
  out: null,
  _in: null
)
```

