# LinodeOpenapiClient::PutLinodeConfigInterfaceRequestIpv4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nat_1_1** | **String** | The 1:1 NAT IPv4 address, used to associate a public IPv4 address with the VPC Subnet IPv4 address assigned to this Interface.  - Only allowed for &#x60;vpc&#x60; type Interfaces. - Returns &#x60;null&#x60; if no 1:1 NAT is set for a &#x60;vpc&#x60; type Interface. - Returns an empty string (&#x60;\&quot;\&quot;&#x60;) for non-&#x60;vpc&#x60; type Interfaces.  For requests:  - Setting this value to &#x60;any&#x60; enables the Linode&#39;s assigned public IPv4 address on this Interface and establishes a 1:1 NAT between the public IPv4 and VPC Subnet IPv4 addresses. - Setting the value to a specific public IPv4 address that is assigned to the Linode enables a 1:1 NAT between that address and the VPC Subnet IPv4 address. - The public IPv4 address can&#39;t be shared with another Linode. - If omitted, set to &#x60;null&#x60;, or set to an empty string (&#x60;\&quot;\&quot;&#x60;), no 1:1 NAT is established.  __Note__. When creating a new compute-instance, you can&#39;t set this to a specific IPv4 address. When a new compute instance is created, the network establishes a public IPv4 address for it. Since this address doesn&#39;t exist yet, you can&#39;t include a custom IPv4 address to change it. Once your compute instances is created, you can [update your configuration profile interface](https://www.linode.com/docs/api/linode-instances/#configuration-profile-interface-update) to change the &#x60;nat_1_1&#x60; address. | [optional] |
| **vpc** | **String** | The VPC Subnet IPv4 address for this Interface.  - Only allowed for &#x60;vpc&#x60; type Interfaces. - Returns an empty string (&#x60;\&quot;\&quot;&#x60;) for non-&#x60;vpc&#x60; type Interfaces.  For requests:  - Must not already be actively assigned as an address or within a range to any Linodes. - Must not be the first two or last two addresses in the Subnet IPv4 Range. - If omitted, a valid address within the Subnet IPv4 range is automatically assigned. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLinodeConfigInterfaceRequestIpv4.new(
  nat_1_1: 203.0.113.2,
  vpc: 10.0.0.2
)
```

