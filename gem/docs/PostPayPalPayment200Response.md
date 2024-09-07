# LinodeOpenapiClient::PostPayPalPayment200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_token** | **String** | __Read-only__ The checkout token generated for this Payment. | [optional][readonly] |
| **payment_id** | **String** | The paypal-generated ID for this Payment. Used when authorizing the Payment in PayPal&#39;s interface. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPayPalPayment200Response.new(
  checkout_token: EC-1A2B3C4D5E6F7G8H9,
  payment_id: PAY-1234567890ABCDEFGHIJKLMN
)
```

