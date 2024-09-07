# LinodeOpenapiClient::PaypalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | __Read-only__ The email address associated with your PayPal account. | [optional][readonly] |
| **paypal_id** | **String** | __Read-only__ PayPal Merchant ID associated with your PayPal account. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PaypalData.new(
  email: example@linode.com,
  paypal_id: ABC1234567890
)
```

