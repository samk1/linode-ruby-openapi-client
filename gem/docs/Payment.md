# LinodeOpenapiClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | __Read-only__ When the Payment was made. | [optional][readonly] |
| **usd** | **Integer** | __Read-only__ The amount, in US dollars, of the Payment. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID of the Payment. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Payment.new(
  date: null,
  usd: null,
  id: 123
)
```

