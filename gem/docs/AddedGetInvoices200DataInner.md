# LinodeOpenapiClient::AddedGetInvoices200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | __Filterable__, __Read-only__ The amount of the Invoice after taxes in US Dollars. | [optional][readonly] |
| **tax** | **Float** | __Read-only__ The amount of tax levied on the Invoice in US Dollars. | [optional][readonly] |
| **billing_source** | **String** | __Filterable__, __Read-only__ &#x60;akamai&#x60;: This Invoice was generated according to the terms of an agreement between the customer and Akamai.  &#x60;linode&#x60;: This Invoice was generated according to the default terms, prices, and discounts. | [optional][readonly] |
| **tax_summary** | [**Array&lt;GetInvoices200ResponseDataInnerTaxSummaryInner&gt;**](GetInvoices200ResponseDataInnerTaxSummaryInner.md) | __Read-only__ The amount of tax broken down into subtotals by source. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The Invoice&#39;s unique ID. | [optional][readonly] |
| **date** | **Time** | __Filterable__, __Read-only__ When this Invoice was generated. | [optional][readonly] |
| **subtotal** | **Float** | __Read-only__ The amount of the Invoice before taxes in US Dollars. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The Invoice&#39;s display label. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetInvoices200DataInner.new(
  total: 132.5,
  tax: 12.25,
  billing_source: linode,
  tax_summary: null,
  id: 123,
  date: null,
  subtotal: 120.25,
  label: Invoice
)
```

