# LinodeOpenapiClient::GooglePayData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_four** | **String** | __Read-only__ The last four digits of the credit card number. | [optional][readonly] |
| **expiry** | **String** | __Read-only__ The expiration month and year of the credit card. | [optional][readonly] |
| **card_type** | **String** | __Read-only__ The type of credit card. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GooglePayData.new(
  last_four: 1234,
  expiry: 06/2022,
  card_type: Discover
)
```

