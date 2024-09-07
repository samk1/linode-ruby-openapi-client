# LinodeOpenapiClient::PutLkeNodePoolRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labels** | **Array&lt;Object&gt;** | Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).  Specifying an empty dictionary value will remove all previously set labels. | [optional] |
| **autoscaler** | [**PutLkeNodePoolRequestAutoscaler**](PutLkeNodePoolRequestAutoscaler.md) |  | [optional] |
| **count** | **Integer** | The number of nodes in the Node Pool. | [optional] |
| **taints** | [**Array&lt;PostLkeClusterRequestNodePoolsInnerTaintsInner&gt;**](PostLkeClusterRequestNodePoolsInnerTaintsInner.md) | Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).  Specifying an empty array (&#x60;[]&#x60;) removes all previously set taints. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLkeNodePoolRequest.new(
  labels: {&quot;example.com/my-app&quot;:&quot;teams&quot;},
  autoscaler: null,
  count: 6,
  taints: [{&quot;key&quot;:&quot;example.com/my-app&quot;,&quot;effect&quot;:&quot;NoSchedule&quot;,&quot;value&quot;:&quot;teamA&quot;},{&quot;key&quot;:&quot;myapp.io/team&quot;,&quot;effect&quot;:&quot;NoExecute&quot;,&quot;value&quot;:&quot;teamB&quot;}]
)
```

