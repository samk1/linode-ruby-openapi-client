# LinodeOpenapiClient::GetAccount200ResponseCreditCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | **String** | The expiration month and year of the credit card. | [optional] |
| **last_four** | **String** | The last four digits of the credit card associated with this Account. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetAccount200ResponseCreditCard.new(
  expiry: 11/2022,
  last_four: 1111
)
```

