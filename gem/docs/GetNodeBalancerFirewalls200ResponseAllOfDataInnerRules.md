# LinodeOpenapiClient::GetNodeBalancerFirewalls200ResponseAllOfDataInnerRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |
| **outbound** | [**Array&lt;GetNodeBalancerFirewalls200ResponseAllOfDataInnerRulesOutboundInner&gt;**](GetNodeBalancerFirewalls200ResponseAllOfDataInnerRulesOutboundInner.md) | The outbound rules for the firewall, as a JSON array. | [optional] |
| **inbound** | [**Array&lt;GetNodeBalancerFirewalls200ResponseAllOfDataInnerRulesInboundInner&gt;**](GetNodeBalancerFirewalls200ResponseAllOfDataInnerRulesInboundInner.md) | The inbound rules for the firewall, as a JSON array. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerFirewalls200ResponseAllOfDataInnerRules.new(
  outbound_policy: DROP,
  inbound_policy: DROP,
  outbound: null,
  inbound: null
)
```

