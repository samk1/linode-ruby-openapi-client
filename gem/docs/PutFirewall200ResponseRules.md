# LinodeOpenapiClient::PutFirewall200ResponseRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |
| **inbound** | [**Array&lt;PutFirewall200ResponseRulesInboundInner&gt;**](PutFirewall200ResponseRulesInboundInner.md) | The inbound rules for the firewall, as a JSON array. | [optional] |
| **outbound** | [**Array&lt;PutFirewall200ResponseRulesOutboundInner&gt;**](PutFirewall200ResponseRulesOutboundInner.md) | The outbound rules for the firewall, as a JSON array. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewall200ResponseRules.new(
  outbound_policy: DROP,
  inbound_policy: DROP,
  inbound: null,
  outbound: null
)
```

