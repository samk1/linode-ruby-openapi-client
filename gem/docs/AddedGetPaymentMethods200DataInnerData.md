# LinodeOpenapiClient::AddedGetPaymentMethods200DataInnerData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::AddedGetPaymentMethods200DataInnerData.openapi_one_of
# =>
# [
#   :'CreditCard2',
#   :'GooglePay3',
#   :'Paypal1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'linode_openapi_client'

LinodeOpenapiClient::AddedGetPaymentMethods200DataInnerData.build(data)
# => #<CreditCard2:0x00007fdd4aab02a0>

LinodeOpenapiClient::AddedGetPaymentMethods200DataInnerData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditCard2`
- `GooglePay3`
- `Paypal1`
- `nil` (if no type matches)

