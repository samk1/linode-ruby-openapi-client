# LinodeOpenapiClient::GetPaymentMethod200ResponseData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetPaymentMethod200ResponseData.openapi_one_of
# =>
# [
#   :'CreditCard',
#   :'GooglePay',
#   :'Paypal'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::GetPaymentMethod200ResponseData.build(data)
# => #<CreditCard:0x00007fdd4aab02a0>

LinodeOpenapiClient::GetPaymentMethod200ResponseData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditCard`
- `GooglePay`
- `Paypal`
- `nil` (if no type matches)

