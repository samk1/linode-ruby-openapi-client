# LinodeOpenapiClient::PutLongviewPlan200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clients_included** | **Integer** | __Read-only__ The number of Longview Clients that may be created with this Subscription tier. | [optional][readonly] |
| **label** | **String** | __Read-only__ A display name for this Subscription tier. | [optional][readonly] |
| **id** | **String** | __Read-only__ The unique ID of this Subscription tier. | [optional][readonly] |
| **price** | [**PutLongviewPlan200ResponsePrice**](PutLongviewPlan200ResponsePrice.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLongviewPlan200Response.new(
  clients_included: 10,
  label: Longview Pro 10 pack,
  id: longview-10,
  price: null
)
```

