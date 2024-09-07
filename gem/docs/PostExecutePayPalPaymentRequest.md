# LinodeOpenapiClient::PostExecutePayPalPaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payer_id** | **String** | The PayerID returned by PayPal during the transaction authorization process. |  |
| **payment_id** | **String** | The PaymentID returned from [Stage a PayPal payment](https://techdocs.akamai.com/linode-api/reference/post-pay-pal-payment) that has been approved with PayPal. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostExecutePayPalPaymentRequest.new(
  payer_id: ABCDEFGHIJKLM,
  payment_id: PAY-1234567890ABCDEFGHIJKLMN
)
```

