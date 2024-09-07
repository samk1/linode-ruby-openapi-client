# LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerAddonsBackupsRegionPricesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monthly** | **Float** | Cost (in US dollars) per month to add Backups service in this Region. | [optional] |
| **hourly** | **Float** | Cost (in US dollars) per hour to add Backups service in this Region. | [optional] |
| **id** | **String** | The Region ID for these prices. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTypes200ResponseDataInnerAddonsBackupsRegionPricesInner.new(
  monthly: 6,
  hourly: 0.0096,
  id: us-east
)
```

