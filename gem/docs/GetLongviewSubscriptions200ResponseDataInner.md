# LinodeOpenapiClient::GetLongviewSubscriptions200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | [**GetLongviewPlan200ResponsePrice**](GetLongviewPlan200ResponsePrice.md) |  | [optional] |
| **id** | **String** | __Read-only__ The unique ID of this Subscription tier. | [optional][readonly] |
| **clients_included** | **Integer** | __Read-only__ The number of Longview Clients that may be created with this Subscription tier. | [optional][readonly] |
| **label** | **String** | __Read-only__ A display name for this Subscription tier. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLongviewSubscriptions200ResponseDataInner.new(
  price: null,
  id: longview-10,
  clients_included: 10,
  label: Longview Pro 10 pack
)
```

