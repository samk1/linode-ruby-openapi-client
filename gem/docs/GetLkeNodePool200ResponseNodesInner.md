# LinodeOpenapiClient::GetLkeNodePool200ResponseNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_id** | **String** | The Linode&#39;s ID. When no Linode is currently provisioned for this Node, this will be null. | [optional] |
| **status** | **String** | The Node&#39;s status as it pertains to being a Kubernetes node. | [optional] |
| **id** | **String** | The Node&#39;s ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeNodePool200ResponseNodesInner.new(
  instance_id: 123458,
  status: ready,
  id: 123456
)
```

