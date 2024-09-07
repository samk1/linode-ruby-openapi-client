# LinodeOpenapiClient::GetLongviewSubscription200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Read-only__ A display name for this Subscription tier. | [optional][readonly] |
| **clients_included** | **Integer** | __Read-only__ The number of Longview Clients that may be created with this Subscription tier. | [optional][readonly] |
| **id** | **String** | __Read-only__ The unique ID of this Subscription tier. | [optional][readonly] |
| **price** | [**PutLongviewPlan200ResponsePrice**](PutLongviewPlan200ResponsePrice.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLongviewSubscription200Response.new(
  label: Longview Pro 10 pack,
  clients_included: 10,
  id: longview-10,
  price: null
)
```

