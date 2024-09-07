# LinodeOpenapiClient::GetEvent200ResponseSecondaryEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the object that is the secondary entity. | [optional] |
| **url** | **String** | The URL where you can access the object this Event is for. If a relative URL, it is relative to the domain you retrieved the Event from. | [optional] |
| **type** | **String** | __Read-only__ The type of entity that is being referenced by the Event. | [optional][readonly] |
| **label** | **String** | The label of this object. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetEvent200ResponseSecondaryEntity.new(
  id: linode/debian9,
  url: /v4/linode/instances/1234,
  type: linode,
  label: linode1234
)
```

