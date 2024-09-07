# LinodeOpenapiClient::AddedGetEvents200DataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The current label of this object. The label may reflect changes that occur with this Event. | [optional] |
| **type** | **String** | __Filterable__, __Read-only__ The type of entity that is being referenced by the Event. | [optional][readonly] |
| **url** | **String** | The URL where you can access the object this Event is for. If a relative URL, it is relative to the domain you retrieved the Event from. | [optional] |
| **id** | **Integer** | __Filterable__ The unique ID for an Event&#39;s entity.  Some Event entities do not have IDs associated with them, so they will not be returned when filtering by ID. These Events include:    - &#x60;account&#x60;   - &#x60;profile&#x60;  Entities for some Events are assigned the ID of the Linode they correspond to. When filtering by ID for these Events, use the corresponding Linode&#39;s ID. These Events include:    - &#x60;disks&#x60;   - &#x60;backups&#x60;  Tag Events use a tag&#39;s name for the entity ID field. When filtering by ID for tag Events, supply the name of the tag. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetEvents200DataInnerEntity.new(
  label: Problem booting my Linode,
  type: ticket,
  url: /v4/support/tickets/11111,
  id: 11111
)
```

