# LinodeOpenapiClient::GetLinodeIp200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | __Read-only__ The IP address. | [optional][readonly] |
| **region** | **String** | __Read-only__ The Region this IP address resides in. | [optional][readonly] |
| **vpc_nat_1_1** | [**GetLinodeIp200ResponseVpcNat11**](GetLinodeIp200ResponseVpcNat11.md) |  | [optional] |
| **type** | **String** | __Read-only__ The type of address this is. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **prefix** | **Integer** | __Read-only__ The number of bits set in the subnet mask. | [optional][readonly] |
| **rdns** | **String** | The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set. | [optional] |
| **subnet_mask** | **String** | __Read-only__ The mask that separates host bits from network bits for this address. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. For IPv4 addresses, this is by default the Linode that this address was assigned to on creation, and these addresses my be moved using the [Assign IPv4s to Linodes](https://techdocs.akamai.com/linode-api/reference/post-assign-ipv4s) operation. For SLAAC and link-local addresses, this value may not be changed. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIp200Response.new(
  address: 97.107.143.141,
  region: us-east,
  vpc_nat_1_1: null,
  type: ipv4,
  public: true,
  prefix: 24,
  rdns: test.example.org,
  subnet_mask: 255.255.255.0,
  gateway: 97.107.143.1,
  linode_id: 123
)
```

