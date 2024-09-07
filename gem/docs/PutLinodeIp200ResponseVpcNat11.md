# LinodeOpenapiClient::PutLinodeIp200ResponseVpcNat11

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The IPv4 address that is configured as a 1:1 NAT for this VPC interface. | [optional] |
| **vpc_id** | **Integer** | __Read-only__ The &#x60;id&#x60; of the VPC configured for this Interface. | [optional][readonly] |
| **subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet for this Interface. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLinodeIp200ResponseVpcNat11.new(
  address: 192.168.0.42,
  vpc_id: 111,
  subnet_id: 101
)
```

