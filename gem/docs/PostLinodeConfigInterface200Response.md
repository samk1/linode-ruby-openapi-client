# LinodeOpenapiClient::PostLinodeConfigInterface200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purpose** | **String** | The type of Interface.  - &#x60;public&#x60;   - Only one &#x60;public&#x60; Interface per Linode can be defined.   - The Linode&#39;s default public IPv4 address is assigned to the &#x60;public&#x60; Interface.   - A Linode must have a public Interface in the first/eth0 position to be reachable via the public internet upon boot without additional system configuration. If no &#x60;public&#x60; Interface is configured, the Linode is not directly reachable via the public internet. In this case, access can only be established via [LISH](https://www.linode.com/docs/products/compute/compute-instances/guides/lish/) or other Linodes connected to the same VLAN or VPC.  - &#x60;vlan&#x60;   - Configuring a &#x60;vlan&#x60; purpose Interface attaches this Linode to the VLAN with the specified &#x60;label&#x60;.   - The Linode is configured to use the specified &#x60;ipam_address&#x60;, if any.  - &#x60;vpc&#x60;   - Configuring a &#x60;vpc&#x60; purpose Interface attaches this Linode to the existing VPC Subnet with the specified &#x60;subnet_id&#x60;.   - When the Interface is activated, the Linode is configured to use an IP address from the range in the assigned VPC Subnet. See &#x60;ipv4.vpc&#x60; for more information. |  |
| **primary** | **Boolean** | The primary Interface is configured as the default route to the Linode.  Each Configuration Profile can have up to one &#x60;\&quot;primary\&quot;: true&#x60; Interface at a time.  Must be &#x60;false&#x60; for &#x60;vlan&#x60; type Interfaces.  If no Interface is configured as the primary, the first non-&#x60;vlan&#x60; type Interface in the &#x60;interfaces&#x60; array is automatically treated as the primary Interface. | [optional] |
| **ipam_address** | **String** | This Network Interface&#39;s private IP address in Classless Inter-Domain Routing (CIDR) notation.  For &#x60;vlan&#x60; purpose Interfaces:  - Must be unique among the Linode&#39;s Interfaces to avoid conflicting addresses. - Should be unique among devices attached to the VLAN to avoid conflict. - The Linode is configured to use this address for the associated Interface upon reboot if Network Helper is enabled. If Network Helper is disabled, the address can be enabled with [manual static IP configuration](https://www.linode.com/docs/guides/manual-network-configuration/).  For &#x60;public&#x60; purpose Interfaces:  - In requests, must be an empty string (&#x60;\&quot;\&quot;&#x60;) or &#x60;null&#x60; if included. - In responses, always returns &#x60;null&#x60;.  For &#x60;vpc&#x60; purpose Interfaces:  - In requests, must be an empty string (&#x60;\&quot;\&quot;&#x60;) or &#x60;null&#x60; if included. - In responses, always returns &#x60;null&#x60;. | [optional] |
| **label** | **String** | __Filterable__ The name of this Interface.  For &#x60;vlan&#x60; purpose Interfaces:  - Required. - Must be unique among the Linode&#39;s Interfaces (a Linode cannot be attached to the same VLAN multiple times). - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). - If the VLAN label is new, a VLAN is created. Up to 10 VLANs can be created in each data center region. To view your active VLANs, run the [List VLANs](https://techdocs.akamai.com/linode-api/reference/get-vlans) operation.  For &#x60;public&#x60; purpose Interfaces:  - In requests, must be an empty string (&#x60;\&quot;\&quot;&#x60;) or &#x60;null&#x60; if included. - In responses, always returns &#x60;null&#x60;.  For &#x60;vpc&#x60; purpose Interfaces:  - In requests, must be an empty string (&#x60;\&quot;\&quot;&#x60;) or &#x60;null&#x60; if included. - In responses, always returns &#x60;null&#x60;. | [optional] |
| **ip_ranges** | **Array&lt;String&gt;** | An array of IPv4 CIDR VPC Subnet ranges that are routed to this Interface.  - Array items are only allowed for &#x60;vpc&#x60; type Interfaces. - This must be empty for non-&#x60;vpc&#x60; type Interfaces.  For requests:  - Addresses in submitted ranges must not already be actively assigned. - Submitting values replaces any existing values. - Submitting an empty array removes any existing values. - Omitting this property results in no change to existing values. | [optional] |
| **subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet for this Interface.  In requests, this value is used to assign a Linode to a VPC Subnet.  - Required for &#x60;vpc&#x60; type Interfaces. - Returns &#x60;null&#x60; for non-&#x60;vpc&#x60; type Interfaces. - Once a VPC Subnet is assigned to an Interface, it cannot be updated. - The Linode must be rebooted with the Interface&#39;s Configuration Profile to complete assignment to a VPC Subnet. | [optional] |
| **ipv4** | [**PostLinodeInstanceRequestAllOfInterfacesInnerIpv4**](PostLinodeInstanceRequestAllOfInterfacesInnerIpv4.md) |  | [optional] |
| **active** | **Boolean** | Returns &#x60;true&#x60; if the Interface is in use, meaning that Compute Instance has been booted using the Configuration Profile to which the Interface belongs. Otherwise returns &#x60;false&#x60;. | [optional] |
| **id** | **Integer** | __Read-only__ The unique ID representing this Interface. | [optional][readonly] |
| **vpc_id** | **Integer** | __Read-only__ The &#x60;id&#x60; of the VPC configured for this Interface. Returns &#x60;null&#x60; for non-&#x60;vpc&#x60; type Interfaces. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLinodeConfigInterface200Response.new(
  purpose: vlan,
  primary: true,
  ipam_address: 10.0.0.1/24,
  label: example-interface,
  ip_ranges: [&quot;10.0.0.64/26&quot;,&quot;fd04:495a:691c:971c::1:0/112&quot;],
  subnet_id: 101,
  ipv4: null,
  active: true,
  id: 101,
  vpc_id: 111
)
```

