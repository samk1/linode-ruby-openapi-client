# LinodeOpenapiClient::GetLinodeIps200ResponseIpv6LinkLocal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | __Filterable__, __Read-only__ The Region this address resides in. | [optional][readonly] |
| **address** | **String** | __Read-only__ The IPv6 link-local address. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of address this is. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **rdns** | **String** | The reverse DNS assigned to this address. | [optional] |
| **prefix** | **Integer** | __Read-only__ The network prefix. | [optional][readonly] |
| **subnet_mask** | **String** | __Read-only__ The subnet mask. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv6LinkLocal.new(
  region: us-east,
  address: fe80::f03c:91ff:fe24:3a2f,
  type: ipv6,
  public: false,
  rdns: null,
  prefix: 64,
  subnet_mask: ffff:ffff:ffff:ffff::,
  gateway: fe80::1,
  linode_id: 123
)
```

