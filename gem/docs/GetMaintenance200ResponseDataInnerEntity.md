# LinodeOpenapiClient::GetMaintenance200ResponseDataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The label of the entity being affected by maintenance. | [optional] |
| **type** | **String** | The type of entity. | [optional] |
| **url** | **String** | The API endpoint prefix to use in combination with the entity id to find specific information about the entity. | [optional] |
| **id** | **Float** | The id of the entity being affected by maintenance. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetMaintenance200ResponseDataInnerEntity.new(
  label: demo-linode,
  type: Linode,
  url: https://api.linode.com/v4/linode/instances/{linodeId},
  id: 1234
)
```

