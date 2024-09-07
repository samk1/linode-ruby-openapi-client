# LinodeOpenapiClient::GetInvoiceItems200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Time** | __Read-only__ The date the Invoice Item ended, based on month. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of service, ether &#x60;hourly&#x60; or &#x60;misc&#x60;. | [optional][readonly] |
| **label** | **String** | __Read-only__ The Invoice Item&#39;s display label. | [optional][readonly] |
| **amount** | **Float** | __Read-only__ The price, in US dollars, of the Invoice Item. Equal to the unit price multiplied by quantity. | [optional][readonly] |
| **tax** | **Float** | __Read-only__ The amount of tax levied on this Item in US Dollars. | [optional][readonly] |
| **from** | **Time** | __Read-only__ The date the Invoice Item started, based on month. | [optional][readonly] |
| **quantity** | **Integer** | __Read-only__ The quantity of this Item for the specified Invoice. | [optional][readonly] |
| **region** | **String** | __Read-only__ The ID of the applicable Region associated with this Invoice Item.  &#x60;null&#x60; if there is no applicable Region. | [optional][readonly] |
| **total** | **Float** | __Read-only__ The price of this Item after taxes in US Dollars. | [optional][readonly] |
| **unit_price** | **String** | __Read-only__ The monthly service fee in US Dollars for this Item. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetInvoiceItems200ResponseDataInner.new(
  to: null,
  type: hourly,
  label: Linode 123,
  amount: 20.2,
  tax: 1.25,
  from: null,
  quantity: 4,
  region: us-west,
  total: 21.45,
  unit_price: 5.05
)
```

