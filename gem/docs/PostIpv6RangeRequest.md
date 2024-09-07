# LinodeOpenapiClient::PostIpv6RangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_length** | **Integer** | The prefix length of the IPv6 range. |  |
| **linode_id** | **Integer** | The ID of the Linode to assign this range to. The SLAAC address for the provided Linode is used as the range&#39;s &#x60;route_target&#x60;.  - __Required__ if &#x60;route_target&#x60; is omitted from the request.  - Mutually exclusive with &#x60;route_target&#x60;. Submitting values for both properties in a request results in an error. | [optional] |
| **route_target** | **String** | The IPv6 SLAAC address to assign this range to.  - __Required__ if &#x60;linode_id&#x60; is omitted from the request.  - Mutually exclusive with &#x60;linode_id&#x60;. Submitting values for both properties in a request results in an error.  - __Note__. Omit the &#x60;/128&#x60; prefix length of the SLAAC address when using this property. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostIpv6RangeRequest.new(
  prefix_length: null,
  linode_id: 123,
  route_target: 2001:0db8::1
)
```

