# LinodeOpenapiClient::GetIps200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | __Filterable__, __Read-only__ The IP address. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ The Region this IP address resides in. | [optional][readonly] |
| **vpc_nat_1_1** | [**GetIps200ResponseAllOfDataInnerVpcNat11**](GetIps200ResponseAllOfDataInnerVpcNat11.md) |  | [optional] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. For IPv4 addresses, this defaults to the Linode that this address was assigned to on creation. IPv4 addresses may be moved using the [Assign IPv4s to Linodes](https://techdocs.akamai.com/linode-api/reference/post-assign-ipv4s) operation. For SLAAC and link-local addresses, this value may not be changed. | [optional][readonly] |
| **rdns** | **String** | __Filterable__ The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set. | [optional] |
| **prefix** | **Integer** | __Filterable__, __Read-only__ The number of bits set in the subnet mask. | [optional][readonly] |
| **subnet_mask** | **String** | __Read-only__ The mask that separates host bits from network bits for this address. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **type** | **String** | __Filterable__, __Read-only__ The type of address this is. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetIps200ResponseAllOfDataInner.new(
  address: 192.0.2.141,
  region: us-east,
  vpc_nat_1_1: null,
  gateway: 192.0.2.1,
  linode_id: 123,
  rdns: test.example.org,
  prefix: 24,
  subnet_mask: 255.255.255.0,
  public: true,
  type: ipv4
)
```

