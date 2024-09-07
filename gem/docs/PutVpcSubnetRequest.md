# LinodeOpenapiClient::PutVpcSubnetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Filterable__ The VPC Subnet&#39;s label, for display purposes only.  - Must be unique among the VPC&#39;s Subnets. - Can only contain ASCII letters, numbers, and hyphens (&#x60;-&#x60;). You can&#39;t use two consecutive hyphens (&#x60;--&#x60;). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutVpcSubnetRequest.new(
  label: cool-vpc-subnet
)
```

