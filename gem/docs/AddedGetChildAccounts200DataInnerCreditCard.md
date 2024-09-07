# LinodeOpenapiClient::AddedGetChildAccounts200DataInnerCreditCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_four** | **String** | The last four digits of the credit card. | [optional] |
| **expiry** | **String** | The expiration month and year of the credit card. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetChildAccounts200DataInnerCreditCard.new(
  last_four: 1111,
  expiry: 11/2024
)
```

