# LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerPrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hourly** | **Float** | Cost (in US dollars) per hour. | [optional] |
| **monthly** | **Float** | Cost (in US dollars) per month. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerPrice.new(
  hourly: 0.03,
  monthly: 20
)
```

