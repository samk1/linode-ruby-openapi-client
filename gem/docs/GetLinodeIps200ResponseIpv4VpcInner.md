# LinodeOpenapiClient::GetLinodeIps200ResponseIpv4VpcInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **interface_id** | **Integer** | __Read-only__ The globally general API entity identifier for the Linode interface. | [optional][readonly] |
| **nat_1_1** | **String** | __Read-only__ The public IP address used for NAT 1:1 with the VPC. This is empty if NAT 1:1 isn&#39;t used. | [optional][readonly] |
| **subnet_mask** | **String** | __Read-only__ The mask that separates host bits from network bits for the &#x60;address&#x60; or &#x60;address_range&#x60;. | [optional][readonly] |
| **prefix** | **Integer** | __Read-only__ The number of bits set in the &#x60;subnet_mask&#x60;. | [optional][readonly] |
| **subnet_id** | **Integer** | The &#x60;id&#x60; of the VPC Subnet for this interface. | [optional] |
| **config_id** | **Integer** | __Filterable__, __Read-only__ The globally general entity identifier for the Linode configuration profile where the VPC is included. | [optional][readonly] |
| **address** | **String** | __Read-only__ An IPv4 address configured for this VPC interface. These follow the [RFC 1918](https://datatracker.ietf.org/doc/html/rfc1918) private address format. Displayed as &#x60;null&#x60; if an &#x60;address_range&#x60;. | [optional][readonly] |
| **address_range** | **String** | __Read-only__ A range of IPv4 addresses configured for this VPC interface. Displayed as &#x60;null&#x60; if a single &#x60;address&#x60;. | [optional][readonly] |
| **linode_id** | **Integer** | __Filterable__, __Read-only__ The identifier for the Linode the VPC interface currently belongs to. | [optional][readonly] |
| **gateway** | **String** | __Read-only__ The default gateway for the VPC subnet that the IP or IP range belongs to. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ The region of the VPC. | [optional][readonly] |
| **active** | **Boolean** | __Filterable__, __Read-only__ Returns &#x60;true&#x60; if the VPC interface is in use, meaning that the Linode was powered on using the &#x60;config_id&#x60; to which the interface belongs. Otherwise returns &#x60;false&#x60;. | [optional][readonly] |
| **vpc_id** | **Integer** | __Filterable__, __Read-only__ The unique globally general API entity identifier for the VPC. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeIps200ResponseIpv4VpcInner.new(
  pages: 1,
  page: 1,
  results: 1,
  interface_id: 2435,
  nat_1_1: 192.168.0.42,
  subnet_mask: 255.255.255.0,
  prefix: 24,
  subnet_id: 101,
  config_id: 4567,
  address: 192.0.2.141,
  address_range: null,
  linode_id: 123,
  gateway: 192.0.2.1,
  region: us-east,
  active: true,
  vpc_id: 7654
)
```

