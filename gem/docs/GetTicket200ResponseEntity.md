# LinodeOpenapiClient::GetTicket200ResponseEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ The unique ID for this Ticket&#39;s entity. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of entity this is related to. | [optional][readonly] |
| **label** | **String** | __Read-only__ The current label of this entity. | [optional][readonly] |
| **url** | **String** | __Read-only__ The URL where you can access the object this event is for. If a relative URL, it is relative to the domain you retrieved the entity from. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTicket200ResponseEntity.new(
  id: 10400,
  type: linode,
  label: linode123456,
  url: /v4/linode/instances/123456
)
```

