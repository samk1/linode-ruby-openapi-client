# LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | [**Array&lt;GetVpcSubnets200ResponseAllOfDataInnerLinodesInner&gt;**](GetVpcSubnets200ResponseAllOfDataInnerLinodesInner.md) | __Read-only__ An array of Linode IDs assigned to the VPC Subnet.  A Linode is assigned to a VPC Subnet if it has a Configuration Profile with a &#x60;vpc&#x60; purpose interface with the subnet&#39;s &#x60;subnet_id&#x60;. Even if the Configuration Profile is not active, meaning the Linode does not have access to the Subnet, the Linode still appears in this array. | [optional][readonly] |
| **updated** | **Time** | __Filterable__, __Read-only__ The date-time of the most recent VPC Subnet update. | [optional][readonly] |
| **ipv4** | **String** | IPv4 range in CIDR canonical form.  - The range must belong to a private address space as defined in [RFC1918](https://datatracker.ietf.org/doc/html/rfc1918). - Allowed prefix lengths: 1-29. - The range must not overlap with 192.168.128.0/17. - The range must not overlap with other Subnets on the same VPC. | [optional] |
| **created** | **Time** | __Filterable__, __Read-only__ The date-time of VPC Subnet creation. | [optional][readonly] |
| **label** | **String** | __Filterable__ The VPC Subnet&#39;s label, for display purposes only.  - Must be unique among the VPC&#39;s Subnets. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). | [optional] |
| **id** | **Integer** | __Filterable__, __Read-only__ The unique ID of the VPC Subnet. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVpcSubnets200ResponseAllOfDataInner.new(
  linodes: null,
  updated: null,
  ipv4: 10.0.1.0/24,
  created: null,
  label: cool-vpc-subnet,
  id: 456
)
```

