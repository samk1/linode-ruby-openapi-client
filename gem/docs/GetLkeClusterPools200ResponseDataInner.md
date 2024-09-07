# LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Filterable__ This Node Pool&#39;s unique ID. | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **nodes** | [**Array&lt;GetLkeClusterPools200ResponseDataInnerNodesInner&gt;**](GetLkeClusterPools200ResponseDataInnerNodesInner.md) | Status information for the Nodes which are members of this Node Pool. If a Linode has not been provisioned for a given Node slot, the instance_id will be returned as null. | [optional] |
| **type** | **String** | The Linode Type for all of the nodes in the Node Pool. | [optional] |
| **labels** | [**GetLkeClusterPools200ResponseDataInnerLabels**](GetLkeClusterPools200ResponseDataInnerLabels.md) |  | [optional] |
| **autoscaler** | [**GetLkeClusterPools200ResponseDataInnerAutoscaler**](GetLkeClusterPools200ResponseDataInnerAutoscaler.md) |  | [optional] |
| **disks** | [**Array&lt;GetLkeClusterPools200ResponseDataInnerDisksInner&gt;**](GetLkeClusterPools200ResponseDataInnerDisksInner.md) | This Node Pool&#39;s custom disk layout. | [optional] |
| **count** | **Integer** | The number of nodes in the Node Pool. | [optional] |
| **taints** | [**Array&lt;GetLkeClusterPools200ResponseDataInnerTaintsInner&gt;**](GetLkeClusterPools200ResponseDataInnerTaintsInner.md) | Kubernetes taints added to nodes in the node pool. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInner.new(
  id: 456,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  nodes: null,
  type: g6-standard-4,
  labels: null,
  autoscaler: null,
  disks: null,
  count: 6,
  taints: [{&quot;key&quot;:&quot;example.com/my-app&quot;,&quot;effect&quot;:&quot;NoSchedule&quot;,&quot;value&quot;:&quot;teamA&quot;},{&quot;value&quot;:&quot;teamC&quot;,&quot;key&quot;:&quot;myapp.io/team&quot;,&quot;effect&quot;:&quot;NoExecute&quot;}]
)
```

