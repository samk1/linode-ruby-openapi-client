# LinodeOpenapiClient::GetNodeBalancerStats200ResponseDataTraffic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_in** | **Array&lt;Float&gt;** | An array of key/value pairs representing unix timestamp and reading for inbound traffic. | [optional] |
| **out** | **Array&lt;Float&gt;** | An array of key/value pairs representing unix timestamp and reading for outbound traffic. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerStats200ResponseDataTraffic.new(
  _in: null,
  out: null
)
```

