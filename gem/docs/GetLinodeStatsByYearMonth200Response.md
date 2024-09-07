# LinodeOpenapiClient::GetLinodeStatsByYearMonth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **netv4** | [**GetLinodeStatsByYearMonth200ResponseNetv4**](GetLinodeStatsByYearMonth200ResponseNetv4.md) |  | [optional] |
| **title** | **String** | The title for this data set. | [optional] |
| **netv6** | [**GetLinodeStatsByYearMonth200ResponseNetv6**](GetLinodeStatsByYearMonth200ResponseNetv6.md) |  | [optional] |
| **cpu** | **Array&lt;Array&lt;Float&gt;&gt;** | Percentage of CPU used. | [optional] |
| **io** | [**GetLinodeStats200ResponseIo**](GetLinodeStats200ResponseIo.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeStatsByYearMonth200Response.new(
  netv4: null,
  title: linode.com - my-linode (linode123456) - day (5 min avg),
  netv6: null,
  cpu: null,
  io: null
)
```

