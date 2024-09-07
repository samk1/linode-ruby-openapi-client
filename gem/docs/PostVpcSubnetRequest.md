# LinodeOpenapiClient::PostVpcSubnetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ The VPC Subnet&#39;s label, for display purposes only.  - Must be unique among the VPC&#39;s Subnets. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). |  |
| **ipv4** | **String** | IPv4 range in CIDR canonical form.  - The range must belong to a private address space as defined in [RFC1918](https://datatracker.ietf.org/doc/html/rfc1918). - Allowed prefix lengths: 1-29. - The range must not overlap with 192.168.128.0/17. - The range must not overlap with other Subnets on the same VPC. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostVpcSubnetRequest.new(
  label: cool-vpc-subnet,
  ipv4: 10.0.1.0/24
)
```

