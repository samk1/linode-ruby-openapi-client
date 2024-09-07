# LinodeOpenapiClient::GetLinodeType200ResponseRegionPricesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Region ID for these prices. | [optional] |
| **monthly** | **Float** | Cost (in US dollars) per month for this Region. | [optional] |
| **hourly** | **Float** | Cost (in US dollars) per hour for this Region. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeType200ResponseRegionPricesInner.new(
  id: us-east,
  monthly: 24,
  hourly: 0.036
)
```

