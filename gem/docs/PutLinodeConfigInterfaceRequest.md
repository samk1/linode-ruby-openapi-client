# LinodeOpenapiClient::PutLinodeConfigInterfaceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_ranges** | **Array&lt;String&gt;** | An array of IPv4 CIDR VPC Subnet ranges that are routed to this Interface.  - Array items are only allowed for &#x60;vpc&#x60; type Interfaces. - This must be empty for non-&#x60;vpc&#x60; type Interfaces.  For requests:  - Addresses in submitted ranges must not already be actively assigned. - Submitting values replaces any existing values. - Submitting an empty array removes any existing values. - Omitting this property results in no change to existing values. | [optional] |
| **primary** | **Boolean** | The primary Interface is configured as the default route to the Linode.  Each Configuration Profile can have up to one &#x60;\&quot;primary\&quot;: true&#x60; Interface at a time.  Must be &#x60;false&#x60; for &#x60;vlan&#x60; type Interfaces.  If no Interface is configured as the primary, the first non-&#x60;vlan&#x60; type Interface in the &#x60;interfaces&#x60; array is automatically treated as the primary Interface. | [optional] |
| **ipv4** | [**PutLinodeConfigInterfaceRequestIpv4**](PutLinodeConfigInterfaceRequestIpv4.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLinodeConfigInterfaceRequest.new(
  ip_ranges: [&quot;10.0.0.64/26&quot;,&quot;fd04:495a:691c:971c::1:0/112&quot;],
  primary: true,
  ipv4: null
)
```

