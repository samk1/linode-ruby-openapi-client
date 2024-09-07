# LinodeOpenapiClient::GetNodeBalancerStats200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**GetNodeBalancerStats200ResponseData**](GetNodeBalancerStats200ResponseData.md) |  | [optional] |
| **title** | **String** | The title for the statistics generated in this response. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerStats200Response.new(
  data: null,
  title: linode.com - balancer12345 (12345) - day (5 min avg)
)
```

