# LinodeOpenapiClient::PaymentMethodData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::PaymentMethodData.openapi_one_of
# =>
# [
#   :'CreditCard1',
#   :'GooglePay2',
#   :'Paypal'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::PaymentMethodData.build(data)
# => #<CreditCard1:0x00007fdd4aab02a0>

LinodeOpenapiClient::PaymentMethodData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditCard1`
- `GooglePay2`
- `Paypal`
- `nil` (if no type matches)

