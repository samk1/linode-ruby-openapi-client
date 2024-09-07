# LinodeOpenapiClient::GetLkeClusterNode200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The creation status of this Node. This status is distinct from this Node&#39;s readiness as a Kubernetes Node Object as determined by the command &#x60;kubectl get nodes&#x60;.  &#x60;not_ready&#x60; indicates that the Linode is still being created.  &#x60;ready&#x60; indicates that the Linode has successfully been created and is running Kubernetes software. | [optional] |
| **instance_id** | **Integer** | The Linode&#39;s ID. If no Linode is currently provisioned for this Node, this is &#x60;null&#x60;. | [optional] |
| **id** | **String** | __Read-only__ The Node&#39;s ID. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterNode200Response.new(
  status: ready,
  instance_id: 123456,
  id: 12345-6aa78910bc
)
```

