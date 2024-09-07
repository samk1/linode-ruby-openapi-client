# LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **taints** | [**Array&lt;PostLkeClusterRequestNodePoolsInnerTaintsInner&gt;**](PostLkeClusterRequestNodePoolsInnerTaintsInner.md) | Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).  Specifying an empty array (&#x60;[]&#x60;) removes all previously set taints. | [optional] |
| **disks** | [**Array&lt;PostLkeClusterRequestNodePoolsInnerDisksInner&gt;**](PostLkeClusterRequestNodePoolsInnerDisksInner.md) | __Note__. This field should be omitted except for special use cases. The disks specified here are partitions in _addition_ to the primary partition and reduce the size of the primary partition, which can lead to stability problems for the Node.  This Node Pool&#39;s custom disk layout. Each item in this array will create a new disk partition for each node in this Node Pool.    - The custom disk layout is applied to each node in this Node Pool.   - The maximum number of custom disk partitions that can be configured is 7.   - Once the requested disk partitions are allocated, the remaining disk space is allocated to the node&#39;s boot disk.   - A Node Pool&#39;s custom disk layout is immutable over the lifetime of the Node Pool. | [optional] |
| **count** | **Integer** | The number of nodes in the Node Pool. |  |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **type** | **String** | The Linode Type for all of the nodes in the Node Pool. |  |
| **labels** | **Array&lt;Object&gt;** | Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).  Specifying an empty dictionary value will remove all previously set labels. | [optional] |
| **autoscaler** | [**PostLkeClusterRequestNodePoolsInnerAutoscaler**](PostLkeClusterRequestNodePoolsInnerAutoscaler.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInner.new(
  taints: [{&quot;key&quot;:&quot;example.com/my-app&quot;,&quot;effect&quot;:&quot;NoSchedule&quot;,&quot;value&quot;:&quot;teamA&quot;},{&quot;key&quot;:&quot;myapp.io/team&quot;,&quot;effect&quot;:&quot;NoExecute&quot;,&quot;value&quot;:&quot;teamB&quot;}],
  disks: null,
  count: 6,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  type: g6-standard-4,
  labels: {&quot;example.com/my-app&quot;:&quot;teams&quot;},
  autoscaler: null
)
```

