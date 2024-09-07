# LinodeOpenapiClient::GetLkeNodePool200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | [**GetLkeClusterPools200ResponseDataInnerLabels**](GetLkeClusterPools200ResponseDataInnerLabels.md) |  | [optional] |
| **type** | **String** | The Linode Type for all of the nodes in the Node Pool. | [optional] |
| **autoscaler** | [**GetLkeClusterPools200ResponseDataInnerAutoscaler**](GetLkeClusterPools200ResponseDataInnerAutoscaler.md) |  | [optional] |
| **count** | **Integer** | The number of nodes in the Node Pool. | [optional] |
| **disks** | [**Array&lt;GetLkeClusterPools200ResponseDataInnerDisksInner&gt;**](GetLkeClusterPools200ResponseDataInnerDisksInner.md) | This Node Pool&#39;s custom disk layout. | [optional] |
| **taints** | [**Array&lt;PostLkeClusterPools200ResponseTaintsInner&gt;**](PostLkeClusterPools200ResponseTaintsInner.md) | Kubernetes taints added to nodes in the node pool. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. | [optional] |
| **id** | **Integer** | __Filterable__ This Node Pool&#39;s unique ID. | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **nodes** | [**Array&lt;GetLkeNodePool200ResponseNodesInner&gt;**](GetLkeNodePool200ResponseNodesInner.md) | Status information for the Nodes which are members of this Node Pool. If a Linode has not been provisioned for a given Node slot, the instance_id will be returned as null. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeNodePool200Response.new(
  labels: null,
  type: g6-standard-4,
  autoscaler: null,
  count: 6,
  disks: null,
  taints: [{&quot;effect&quot;:&quot;NoSchedule&quot;,&quot;key&quot;:&quot;example.com/my-app&quot;,&quot;value&quot;:&quot;teamA&quot;},{&quot;effect&quot;:&quot;NoExecute&quot;,&quot;key&quot;:&quot;myapp.io/team&quot;,&quot;value&quot;:&quot;teamC&quot;}],
  id: 456,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  nodes: null
)
```

