# LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerRegionPricesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monthly** | **Float** | Cost (in US dollars) per month for this Region. | [optional] |
| **hourly** | **Float** | Cost (in US dollars) per hour for this Region. | [optional] |
| **id** | **String** | The Region ID for these prices. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerRegionPricesInner.new(
  monthly: 24,
  hourly: 0.036,
  id: us-east
)
```

