# LinodeOpenapiClient::GetEvents200ResponseDataInnerSecondaryEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the object that is the secondary entity. | [optional] |
| **type** | **String** | __Read-only__ The type of entity that is being referenced by the Event. | [optional][readonly] |
| **label** | **String** | The label of this object. | [optional] |
| **url** | **String** | The URL where you can access the object this Event is for. If a relative URL, it is relative to the domain you retrieved the Event from. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetEvents200ResponseDataInnerSecondaryEntity.new(
  id: linode/debian9,
  type: linode,
  label: linode1234,
  url: /v4/linode/instances/1234
)
```

