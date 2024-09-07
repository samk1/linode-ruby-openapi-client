# LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Node&#39;s ID. | [optional] |
| **instance_id** | **String** | The Linode&#39;s ID. When no Linode is currently provisioned for this Node, this will be null. | [optional] |
| **status** | **String** | The Node&#39;s status as it pertains to being a Kubernetes node. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerNodesInner.new(
  id: 123456,
  instance_id: 123458,
  status: ready
)
```

