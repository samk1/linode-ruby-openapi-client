# LinodeOpenapiClient::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**PaymentMethodData**](PaymentMethodData.md) |  | [optional] |
| **created** | **Time** | __Read-only__ When the Payment Method was added to the Account. | [optional][readonly] |
| **is_default** | **Boolean** | Whether this Payment Method is the default method for automatically processing service charges. | [optional] |
| **id** | **Integer** | The unique ID of this Payment Method. | [optional] |
| **type** | **String** | The type of Payment Method. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PaymentMethod.new(
  data: null,
  created: null,
  is_default: true,
  id: 123,
  type: credit_card
)
```

