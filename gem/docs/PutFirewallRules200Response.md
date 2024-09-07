# LinodeOpenapiClient::PutFirewallRules200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound** | [**Array&lt;PutFirewallRules200ResponseInboundInner&gt;**](PutFirewallRules200ResponseInboundInner.md) | The inbound rules for the firewall, as a JSON array. | [optional] |
| **outbound** | [**Array&lt;PutFirewallRules200ResponseOutboundInner&gt;**](PutFirewallRules200ResponseOutboundInner.md) | The outbound rules for the firewall, as a JSON array. | [optional] |
| **inbound_policy** | **String** | The default behavior for inbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;inbound.action&#x60; property of the Firewall Rule. | [optional] |
| **outbound_policy** | **String** | The default behavior for outbound traffic. This setting can be overridden by [updating](https://techdocs.akamai.com/linode-api/reference/put-firewall-rules) the &#x60;outbound.action&#x60; property of the Firewall Rule. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewallRules200Response.new(
  inbound: null,
  outbound: null,
  inbound_policy: DROP,
  outbound_policy: DROP
)
```

