# LinodeOpenapiClient::GetLinodeType200ResponseAddonsBackups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_prices** | [**Array&lt;GetLinodeType200ResponseAddonsBackupsRegionPricesInner&gt;**](GetLinodeType200ResponseAddonsBackupsRegionPricesInner.md) |  | [optional] |
| **price** | [**GetLinodeTypes200ResponseDataInnerAddonsBackupsPrice**](GetLinodeTypes200ResponseDataInnerAddonsBackupsPrice.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeType200ResponseAddonsBackups.new(
  region_prices: null,
  price: null
)
```

