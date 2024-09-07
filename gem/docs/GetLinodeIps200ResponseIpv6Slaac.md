# LinodeOpenapiClient::GetLinodeIps200ResponseIpv6Slaac

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | __Filterable__, __Read-only__ The Region this address resides in. | [optional][readonly] |
| **address** | **String** | __Read-only__ The address. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for this address. | [optional][readonly] |
| **linode_id** | **Integer** | __Read-only__ The ID of the Linode this address currently belongs to. | [optional][readonly] |
| **public** | **Boolean** | __Read-only__ Whether this is a public or private IP address. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of address this is. | [optional][readonly] |
| **prefix** | **Integer** | __Read-only__ The network prefix. | [optional][readonly] |
| **rdns** | **String** | The reverse DNS assigned to this address. | [optional] |
| **subnet_mask** | **String** | __Read-only__ The subnet mask. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv6Slaac.new(
  region: us-east,
  address: 2600:3c03::f03c:91ff:fe24:3a2f,
  gateway: fe80::1,
  linode_id: 123,
  public: true,
  type: ipv6,
  prefix: 64,
  rdns: null,
  subnet_mask: ffff:ffff:ffff:ffff::
)
```

