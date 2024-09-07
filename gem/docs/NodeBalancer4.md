# LinodeOpenapiClient::NodeBalancer4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Read-only__ When this NodeBalancer was created. | [optional][readonly] |
| **ipv4** | **String** | __Filterable__, __Read-only__ This NodeBalancer&#39;s public IPv4 address. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ The Region where this NodeBalancer is located. NodeBalancers only support backends in the same Region. | [optional][readonly] |
| **ipv6** | **String** | __Read-only__ This NodeBalancer&#39;s public IPv6 address. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This NodeBalancer&#39;s unique ID. | [optional][readonly] |
| **transfer** | [**NodeBalancer4Transfer**](NodeBalancer4Transfer.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **client_conn_throttle** | **Integer** | Throttle connections per second.  Set to 0 (zero) to disable throttling. | [optional] |
| **updated** | **Time** | __Read-only__ When this NodeBalancer was last updated. | [optional][readonly] |
| **label** | **String** | __Filterable__ This NodeBalancer&#39;s label. These must be unique on your Account. | [optional] |
| **hostname** | **String** | __Read-only__ This NodeBalancer&#39;s hostname, beginning with its IP address and ending with _.ip.linodeusercontent.com_. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancer4.new(
  created: null,
  ipv4: 203.0.113.1,
  region: us-east,
  ipv6: null,
  id: 12345,
  transfer: null,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  client_conn_throttle: 0,
  updated: null,
  label: balancer12345,
  hostname: 192.0.2.1.ip.linodeusercontent.com
)
```

