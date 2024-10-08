# LinodeOpenapiClient::AddedPostPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **Integer** | The ID of the Payment Method to apply to the Payment. | [optional] |
| **usd** | **String** | The amount in US Dollars of the Payment.  - Can begin with or without &#x60;$&#x60;. - Commas (&#x60;,&#x60;) are not accepted. - Must end with a decimal expression, such as &#x60;.00&#x60; or &#x60;.99&#x60;. - Minimum: &#x60;$5.00&#x60; or the Account balance, whichever is lower. - Maximum: &#x60;$2000.00&#x60; or the Account balance up to &#x60;$50000.00&#x60;, whichever is greater. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedPostPayment.new(
  payment_method_id: 123,
  usd: $120.50
)
```

