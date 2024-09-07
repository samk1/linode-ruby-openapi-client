# LinodeOpenapiClient::Paypal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paypal_id** | **String** | __Read-only__ PayPal Merchant ID associated with your PayPal account. | [optional][readonly] |
| **email** | **String** | __Read-only__ The email address associated with your PayPal account. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Paypal.new(
  paypal_id: ABC1234567890,
  email: example@linode.com
)
```

