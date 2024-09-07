# LinodeOpenapiClient::AddedGetNotifications200DataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL where you can access the object this Notification is for. If a relative URL, it is relative to the domain you retrieved the Notification from.  Returns &#x60;null&#x60; for the &#x60;promotion&#x60; entity type. | [optional] |
| **type** | **String** | The type of entity this is related to. | [optional] |
| **label** | **String** | The current label for this Notification&#39;s entity.  Returns &#x60;null&#x60; for the following entity types:  - &#x60;entity_transfer&#x60; - &#x60;promotion&#x60; - &#x60;region&#x60; | [optional] |
| **id** | **Integer** | The unique ID of the Notification&#39;s entity, based on the entity type.  Returns &#x60;null&#x60; for the following entity types:  - &#x60;account&#x60; - &#x60;promotion&#x60; | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetNotifications200DataInnerEntity.new(
  url: /support/tickets/3456,
  type: ticket,
  label: Linode not booting.,
  id: 3456
)
```

