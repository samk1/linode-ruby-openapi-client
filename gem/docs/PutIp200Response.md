# LinodeOpenapiClient::PutIp200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vpc_nat_1_1** | [**PutLinodeIp200ResponseVpcNat11**](PutLinodeIp200ResponseVpcNat11.md) |  | [optional] |
| **region** | **String** | __Read-only__ The Region this IP address resides in. | [optional][readonly] |
| **address** | **String** | __Read-only__ The IP address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. For IPv4 addresses, this is by default the Linode that this address was assigned to on creation, and these addresses my be moved using the [Assign IPv4s to Linodes](https://techdocs.akamai.com/linode-api/reference/post-assign-ipv4s) operation. For SLAAC and link-local addresses, this value may not be changed. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of address this is. | [optional][readonly] |
| **subnet_mask** | **String** | __Read-only__ The mask that separates host bits from network bits for this address. | [optional][readonly] |
| **rdns** | **String** | The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set. | [optional] |
| **prefix** | **Integer** | __Read-only__ The number of bits set in the subnet mask. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutIp200Response.new(
  vpc_nat_1_1: null,
  region: us-east,
  address: 97.107.143.141,
  linode_id: 123,
  gateway: 97.107.143.1,
  public: true,
  type: ipv4,
  subnet_mask: 255.255.255.0,
  rdns: test.example.org,
  prefix: 24
)
```

