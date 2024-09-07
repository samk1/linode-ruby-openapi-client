# LinodeOpenapiClient::PostPaymentMethodRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_default** | **Boolean** | Whether this Payment Method is the default method for automatically processing service charges. |  |
| **data** | [**PostCreditCardRequest**](PostCreditCardRequest.md) |  |  |
| **type** | **String** | The type of Payment Method.  Alternative Payment Methods including Google Pay and PayPal can be added using the Cloud Manager. See the [Manage Payment Methods](https://www.linode.com/docs/products/platform/billing/guides/payment-methods/) guide for details and instructions. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPaymentMethodRequest.new(
  is_default: true,
  data: null,
  type: credit_card
)
```

