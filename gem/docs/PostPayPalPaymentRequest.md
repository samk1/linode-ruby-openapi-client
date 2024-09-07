# LinodeOpenapiClient::PostPayPalPaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancel_url** | **String** | The URL to have PayPal redirect to when Payment is canceled. |  |
| **redirect_url** | **String** | The URL to have PayPal redirect to when Payment is approved. |  |
| **usd** | **String** | The payment amount in USD. Minimum accepted value of $5 USD. Maximum accepted value of $500 USD or credit card payment limit; whichever value is highest. PayPal&#39;s maximum transaction limit is $10,000 USD. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPayPalPaymentRequest.new(
  cancel_url: https://example.org,
  redirect_url: https://example.org,
  usd: 120.50
)
```

