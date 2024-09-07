# LinodeOpenapiClient::PostLkeClusterPools200ResponseNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The Node&#39;s status as it pertains to being a Kubernetes node. | [optional] |
| **instance_id** | **String** | The Linode&#39;s ID. When no Linode is currently provisioned for this Node, this will be null. | [optional] |
| **id** | **String** | The Node&#39;s ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterPools200ResponseNodesInner.new(
  status: ready,
  instance_id: 123458,
  id: 123456
)
```

