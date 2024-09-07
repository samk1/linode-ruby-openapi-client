# LinodeOpenapiClient::GetLinodeStats200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **io** | [**GetLinodeStats200ResponseIo**](GetLinodeStats200ResponseIo.md) |  | [optional] |
| **netv6** | [**GetLinodeStats200ResponseNetv6**](GetLinodeStats200ResponseNetv6.md) |  | [optional] |
| **cpu** | **Array&lt;Array&lt;Float&gt;&gt;** | Percentage of CPU used. | [optional] |
| **title** | **String** | The title for this data set. | [optional] |
| **netv4** | [**GetLinodeStats200ResponseNetv4**](GetLinodeStats200ResponseNetv4.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeStats200Response.new(
  io: null,
  netv6: null,
  cpu: null,
  title: linode.com - my-linode (linode123456) - day (5 min avg),
  netv4: null
)
```

