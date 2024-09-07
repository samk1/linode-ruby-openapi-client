# LinodeOpenapiClient::PostNodeBalancerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ This NodeBalancer&#39;s label. These must be unique on your Account. | [optional] |
| **tags** | **Array&lt;String&gt;** | An array of Tags applied to this object. Tags are for organizational purposes only. | [optional] |
| **client_conn_throttle** | **Integer** | Throttle connections per second.  Set to 0 (zero) to disable throttling. | [optional] |
| **region** | **String** | The ID of the Region to create this NodeBalancer in. |  |
| **firewall_id** | **Integer** | The ID of the Firewall to assign to the NodeBalancer.  - Only one NodeBalancer can be assigned to a Firewall at a time. - Firewalls only apply to inbound TCP traffic to NodeBalancers. | [optional] |
| **configs** | [**Array&lt;PostNodeBalancerRequestConfigsInner&gt;**](PostNodeBalancerRequestConfigsInner.md) | The port Configs to create for this NodeBalancer.  Each Config must have a unique port and at least one Node. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostNodeBalancerRequest.new(
  label: balancer12345,
  tags: [&quot;test&quot;,&quot;web-dev-team&quot;],
  client_conn_throttle: 0,
  region: us-east,
  firewall_id: null,
  configs: null
)
```

