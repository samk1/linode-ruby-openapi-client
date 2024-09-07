# LinodeOpenapiClient::GetLinodeIps200ResponseIpv4PrivateInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | __Read-only__ The private IPv4 address. | [optional][readonly] |
| **region** | **String** | __Read-only__ The Region this address resides in. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of address this is. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **rdns** | **String** | The reverse DNS assigned to this address. | [optional] |
| **prefix** | **Integer** | __Read-only__ The number of bits set in the subnet mask. | [optional][readonly] |
| **subnet_mask** | **String** | __Read-only__ The mask that separates host bits from network bits for this address. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv4PrivateInner.new(
  address: 192.168.133.234,
  region: us-east,
  gateway: null,
  linode_id: 123,
  type: ipv4,
  public: false,
  rdns: null,
  prefix: 17,
  subnet_mask: 255.255.128.0
)
```

