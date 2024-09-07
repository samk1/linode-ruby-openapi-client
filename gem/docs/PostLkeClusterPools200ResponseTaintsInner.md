# LinodeOpenapiClient::PostLkeClusterPools200ResponseTaintsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effect** | **String** | The Kubernetes taint effect. For &#x60;NoSchedule&#x60;, &#x60;PreferNoSchedule&#x60; and &#x60;NoExecute&#x60; descriptions, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). | [optional] |
| **key** | **String** | The Kubernetes taint key. | [optional] |
| **value** | **String** | The Kubernetes taint value. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterPools200ResponseTaintsInner.new(
  effect: NoSchedule,
  key: example.com/my-app,
  value: teamC
)
```

