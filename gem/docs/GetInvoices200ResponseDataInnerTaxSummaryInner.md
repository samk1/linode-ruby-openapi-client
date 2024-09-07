# LinodeOpenapiClient::GetInvoices200ResponseDataInnerTaxSummaryInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax** | **Float** | The amount of tax subtotal attributable to this source. | [optional] |
| **name** | **String** | The source of this tax subtotal. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetInvoices200ResponseDataInnerTaxSummaryInner.new(
  tax: 12.25,
  name: PA STATE TAX
)
```

