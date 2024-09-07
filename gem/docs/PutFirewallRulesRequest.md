# LinodeOpenapiClient::PutFirewallRulesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outbound** | **Object** |  | [optional] |
| **inbound** | **Object** |  | [optional] |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewallRulesRequest.new(
  outbound: null,
  inbound: null,
  outbound_policy: DROP,
  inbound_policy: DROP
)
```

