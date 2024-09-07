# LinodeOpenapiClient::GetFirewalls200ResponseDataInnerRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound** | [**Array&lt;GetFirewalls200ResponseDataInnerRulesInboundInner&gt;**](GetFirewalls200ResponseDataInnerRulesInboundInner.md) | The inbound rules for the firewall, as a JSON array. | [optional] |
| **outbound** | [**Array&lt;GetFirewalls200ResponseDataInnerRulesOutboundInner&gt;**](GetFirewalls200ResponseDataInnerRulesOutboundInner.md) | The outbound rules for the firewall, as a JSON array. | [optional] |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewalls200ResponseDataInnerRules.new(
  inbound: null,
  outbound: null,
  outbound_policy: DROP,
  inbound_policy: DROP
)
```

