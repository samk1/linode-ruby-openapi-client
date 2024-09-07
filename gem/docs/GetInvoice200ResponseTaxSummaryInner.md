# LinodeOpenapiClient::GetInvoice200ResponseTaxSummaryInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The source of this tax subtotal. | [optional] |
| **tax** | **Float** | The amount of tax subtotal attributable to this source. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetInvoice200ResponseTaxSummaryInner.new(
  name: PA STATE TAX,
  tax: 12.25
)
```

