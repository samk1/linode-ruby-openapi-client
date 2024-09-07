# LinodeOpenapiClient::GetFirewallRules200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |
| **outbound** | [**Array&lt;GetFirewallRules200ResponseOutboundInner&gt;**](GetFirewallRules200ResponseOutboundInner.md) | The outbound rules for the firewall, as a JSON array. | [optional] |
| **inbound** | [**Array&lt;PostFirewallsRequestAllOfRulesInboundInner&gt;**](PostFirewallsRequestAllOfRulesInboundInner.md) | The inbound rules for the firewall, as a JSON array. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallRules200Response.new(
  inbound_policy: DROP,
  outbound_policy: DROP,
  outbound: null,
  inbound: null
)
```

