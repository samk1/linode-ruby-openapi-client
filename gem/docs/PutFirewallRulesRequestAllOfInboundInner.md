# LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Used to describe this rule. For display purposes only. | [optional] |
| **label** | **String** | Used to identify this rule. For display purposes only. | [optional] |
| **protocol** | **String** | The type of network traffic affected by this rule. | [optional] |
| **action** | **String** | Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall&#39;s &#x60;inbound_policy&#x60; if this is an inbound rule, or the &#x60;outbound_policy&#x60; if this is an outbound rule. | [optional] |
| **ports** | **String** | A string representing the port or ports affected by this rule:  - The string may be a single port, a range of ports, or a comma-separated list of single ports and port ranges. A space is permitted following each comma. - A range of ports is inclusive of the start and end values for the range. The end value of the range must be greater than the start value. - Ports must be within 1 and 65535, and may not contain any leading zeroes. For example, port &#x60;080&#x60; is not allowed. - The ports string can have up to 15 _pieces_, where a single port is treated as one piece, and a port range is treated as two pieces. For example, the string \&quot;22-24, 80, 443\&quot; has four pieces. - If no ports are configured, all ports are affected. - Only allowed for the TCP and UDP protocols. Ports are not allowed for the ICMP and IPENCAP protocols. | [optional] |
| **addresses** | [**GetFirewall200ResponseRulesOutboundInnerAddresses**](GetFirewall200ResponseRulesOutboundInnerAddresses.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner.new(
  description: An example firewall rule description.,
  label: firewallrule123,
  protocol: TCP,
  action: ACCEPT,
  ports: 22-24, 80, 443,
  addresses: null
)
```

