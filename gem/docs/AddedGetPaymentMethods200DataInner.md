# LinodeOpenapiClient::AddedGetPaymentMethods200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_default** | **Boolean** | Whether this Payment Method is the default method for automatically processing service charges. | [optional] |
| **created** | **Time** | __Read-only__ When the Payment Method was added to the Account. | [optional][readonly] |
| **data** | [**AddedGetPaymentMethods200DataInnerData**](AddedGetPaymentMethods200DataInnerData.md) |  | [optional] |
| **type** | **String** | The type of Payment Method. | [optional] |
| **id** | **Integer** | The unique ID of this Payment Method. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetPaymentMethods200DataInner.new(
  is_default: true,
  created: null,
  data: null,
  type: credit_card,
  id: 123
)
```

