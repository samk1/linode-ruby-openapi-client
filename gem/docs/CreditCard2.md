# LinodeOpenapiClient::CreditCard2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | **String** | __Read-only__ The expiration month and year of the credit card. | [optional][readonly] |
| **last_four** | **String** | __Read-only__ The last four digits of the credit card number. | [optional][readonly] |
| **card_type** | **String** | __Read-only__ The type of credit card. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::CreditCard2.new(
  expiry: 06/2022,
  last_four: 1234,
  card_type: Discover
)
```

