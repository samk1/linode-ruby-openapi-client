# LinodeOpenapiClient::GetChildAccount200ResponseCreditCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry** | **String** | The expiration month and year of the credit card. | [optional] |
| **last_four** | **String** | The last four digits of the credit card. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetChildAccount200ResponseCreditCard.new(
  expiry: 11/2024,
  last_four: 1111
)
```

