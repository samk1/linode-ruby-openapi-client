# LinodeOpenapiClient::GetLinodeType200ResponseAddonsBackupsRegionPricesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hourly** | **Float** | Cost (in US dollars) per hour to add Backups service in this Region. | [optional] |
| **monthly** | **Float** | Cost (in US dollars) per month to add Backups service in this Region. | [optional] |
| **id** | **String** | The Region ID for these prices. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeType200ResponseAddonsBackupsRegionPricesInner.new(
  hourly: 0.0096,
  monthly: 6,
  id: us-east
)
```

