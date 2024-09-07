# LinodeOpenapiClient::PutLkeNodePool200ResponseTaintsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The Kubernetes taint value. | [optional] |
| **effect** | **String** | The Kubernetes taint effect. For &#x60;NoSchedule&#x60;, &#x60;PreferNoSchedule&#x60; and &#x60;NoExecute&#x60; descriptions, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). | [optional] |
| **key** | **String** | The Kubernetes taint key. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLkeNodePool200ResponseTaintsInner.new(
  value: teamC,
  effect: NoSchedule,
  key: example.com/my-app
)
```

