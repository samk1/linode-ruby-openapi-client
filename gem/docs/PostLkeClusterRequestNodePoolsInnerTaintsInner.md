# LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInnerTaintsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The Kubernetes taint value.  * This needs to begin and end with alphanumeric characters. * May only consist of alphanumeric characters, dashes (&#x60;-&#x60;), underscores (&#x60;_&#x60;), or dots (&#x60;.&#x60;). * May be specified as an empty string value with &#x60;\&quot;\&quot;&#x60;. |  |
| **key** | **String** | The Kubernetes taint key.  * This needs to begin and end with alphanumeric characters. * May only consist of alphanumeric characters, dashes (&#x60;-&#x60;), underscores (&#x60;_&#x60;), or dots (&#x60;.&#x60;). * If the key begins with a DNS subdomain prefix and a single slash (&#x60;/&#x60;), like &#x60;example.com/my-app&#x60;, the prefix part must adhere to RFC 1123 DNS subdomain restrictions and be a maximum of 253 characters. |  |
| **effect** | **String** | The Kubernetes taint effect. For &#x60;NoSchedule&#x60;, &#x60;PreferNoSchedule&#x60; and &#x60;NoExecute&#x60; descriptions, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInnerTaintsInner.new(
  value: teamC,
  key: example.com/my-app,
  effect: NoSchedule
)
```

