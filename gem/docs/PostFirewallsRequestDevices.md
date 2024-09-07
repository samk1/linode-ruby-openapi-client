# LinodeOpenapiClient::PostFirewallsRequestDevices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | **Array&lt;Integer&gt;** | An array of Linode IDs. A Firewall Device is created for each ID. | [optional] |
| **nodebalancers** | **Array&lt;Integer&gt;** | An array containing a NodeBalancer ID. A Firewall Device is created for the ID.  - Only one NodeBalancer can be assigned to a Firewall at a time. - Firewalls only apply to inbound TCP traffic to NodeBalancers. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostFirewallsRequestDevices.new(
  linodes: [123,456],
  nodebalancers: [321]
)
```

