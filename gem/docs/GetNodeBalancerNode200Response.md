# LinodeOpenapiClient::GetNodeBalancerNode200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ This node&#39;s unique ID. | [optional][readonly] |
| **nodebalancer_id** | **Integer** | __Read-only__ The NodeBalancer ID that this Node belongs to. | [optional][readonly] |
| **config_id** | **Integer** | __Read-only__ The NodeBalancer Config ID that this Node belongs to. | [optional][readonly] |
| **address** | **String** | The private IP Address where this backend can be reached. This _must_ be a private IP address. | [optional] |
| **label** | **String** | The label for this node.  This is for display purposes only. | [optional] |
| **weight** | **Integer** | Used when picking a backend to serve a request and is not pinned to a single backend yet.  Nodes with a higher weight will receive more traffic. | [optional] |
| **mode** | **String** | The mode this NodeBalancer should use when sending traffic to this backend.  - If set to &#x60;accept&#x60; this backend is accepting traffic. - If set to &#x60;reject&#x60; this backend will not receive traffic. - If set to &#x60;drain&#x60; this backend will not receive _new_ traffic, but connections already pinned to it will continue to be routed to it. - If set to &#x60;backup&#x60;, this backend will only receive traffic if all &#x60;accept&#x60; nodes are down. | [optional] |
| **status** | **String** | __Read-only__ The current status of this node, based on the configured checks of its NodeBalancer Config. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerNode200Response.new(
  id: 54321,
  nodebalancer_id: 12345,
  config_id: 4567,
  address: 192.168.210.120:80,
  label: node54321,
  weight: 50,
  mode: accept,
  status: UP
)
```

