# LinodeOpenapiClient::AddedGetMaintenance200DataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The label of the entity being affected by maintenance. | [optional] |
| **url** | **String** | The API endpoint prefix to use in combination with the entity id to find specific information about the entity. | [optional] |
| **type** | **String** | The type of entity. | [optional] |
| **id** | **Float** | The id of the entity being affected by maintenance. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetMaintenance200DataInnerEntity.new(
  label: demo-linode,
  url: https://api.linode.com/v4/linode/instances/{linodeId},
  type: Linode,
  id: 1234
)
```

