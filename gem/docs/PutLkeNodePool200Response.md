# LinodeOpenapiClient::PutLkeNodePool200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nodes** | [**Array&lt;GetLkeNodePool200ResponseNodesInner&gt;**](GetLkeNodePool200ResponseNodesInner.md) | Status information for the Nodes which are members of this Node Pool. If a Linode has not been provisioned for a given Node slot, the instance_id will be returned as null. | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Filterable__ This Node Pool&#39;s unique ID. | [optional] |
| **autoscaler** | [**PutLkeNodePool200ResponseAutoscaler**](PutLkeNodePool200ResponseAutoscaler.md) |  | [optional] |
| **type** | **String** | The Linode Type for all of the nodes in the Node Pool. | [optional] |
| **labels** | [**PostLkeClusterPools200ResponseLabels**](PostLkeClusterPools200ResponseLabels.md) |  | [optional] |
| **taints** | [**Array&lt;PutLkeNodePool200ResponseTaintsInner&gt;**](PutLkeNodePool200ResponseTaintsInner.md) | Kubernetes taints added to nodes in the node pool. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. | [optional] |
| **count** | **Integer** | The number of nodes in the Node Pool. | [optional] |
| **disks** | [**Array&lt;PostLkeClusterRequestNodePoolsInnerDisksInner&gt;**](PostLkeClusterRequestNodePoolsInnerDisksInner.md) | This Node Pool&#39;s custom disk layout. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLkeNodePool200Response.new(
  nodes: null,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 456,
  autoscaler: null,
  type: g6-standard-4,
  labels: null,
  taints: [{&quot;value&quot;:&quot;teamA&quot;,&quot;effect&quot;:&quot;NoSchedule&quot;,&quot;key&quot;:&quot;example.com/my-app&quot;},{&quot;effect&quot;:&quot;NoExecute&quot;,&quot;key&quot;:&quot;myapp.io/team&quot;,&quot;value&quot;:&quot;teamC&quot;}],
  count: 6,
  disks: null
)
```

