# LinodeOpenapiClient::AddedPostPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of Payment Method.  Alternative Payment Methods including Google Pay and PayPal can be added using the Cloud Manager. See the [Manage Payment Methods](https://www.linode.com/docs/products/platform/billing/guides/payment-methods/) guide for details and instructions. |  |
| **is_default** | **Boolean** | Whether this Payment Method is the default method for automatically processing service charges. |  |
| **data** | [**AddedPostPaymentMethodData**](AddedPostPaymentMethodData.md) |  |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedPostPaymentMethod.new(
  type: credit_card,
  is_default: true,
  data: null
)
```

