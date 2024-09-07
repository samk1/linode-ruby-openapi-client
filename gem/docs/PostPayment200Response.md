# LinodeOpenapiClient::PostPayment200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usd** | **Integer** | __Read-only__ The amount, in US dollars, of the Payment. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID of the Payment. | [optional][readonly] |
| **date** | **Time** | __Read-only__ When the Payment was made. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostPayment200Response.new(
  usd: null,
  id: 123,
  date: null
)
```

