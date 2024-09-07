# LinodeOpenapiClient::AddedPostPaymentMethodData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_month** | **Integer** | A value from 1-12 representing the expiration month of your credit card.    - 1 &#x3D; January   - 2 &#x3D; February   - 3 &#x3D; March   - Etc. |  |
| **card_number** | **String** | Your credit card number. No spaces or hyphens (&#x60;-&#x60;) allowed. |  |
| **cvv** | **String** | CVV (Card Verification Value) of the credit card, typically found on the back of the card. |  |
| **expiry_year** | **Integer** | A four-digit integer representing the expiration year of your credit card.  The combination of &#x60;expiry_month&#x60; and &#x60;expiry_year&#x60; must result in a month/year combination of the current month or in the future. An expiration date set in the past is invalid. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedPostPaymentMethodData.new(
  expiry_month: 12,
  card_number: 4111111111111111,
  cvv: 123,
  expiry_year: 2020
)
```

