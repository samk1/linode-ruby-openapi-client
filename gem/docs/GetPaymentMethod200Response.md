# LinodeOpenapiClient::GetPaymentMethod200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ When the Payment Method was added to the Account. | [optional][readonly] |
| **is_default** | **Boolean** | Whether this Payment Method is the default method for automatically processing service charges. | [optional] |
| **data** | [**GetPaymentMethod200ResponseData**](GetPaymentMethod200ResponseData.md) |  | [optional] |
| **type** | **String** | The type of Payment Method. | [optional] |
| **id** | **Integer** | The unique ID of this Payment Method. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetPaymentMethod200Response.new(
  created: null,
  is_default: true,
  data: null,
  type: credit_card,
  id: 123
)
```

