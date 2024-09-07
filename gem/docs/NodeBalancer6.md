# LinodeOpenapiClient::NodeBalancer6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | __Read-only__ When this NodeBalancer was last updated. | [optional][readonly] |
| **label** | **String** | __Filterable__ This NodeBalancer&#39;s label. These must be unique on your Account. | [optional] |
| **hostname** | **String** | __Read-only__ This NodeBalancer&#39;s hostname, beginning with its IP address and ending with _.ip.linodeusercontent.com_. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ The Region where this NodeBalancer is located. NodeBalancers only support backends in the same Region. | [optional][readonly] |
| **ipv4** | **String** | __Filterable__, __Read-only__ This NodeBalancer&#39;s public IPv4 address. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this NodeBalancer was created. | [optional][readonly] |
| **client_conn_throttle** | **Integer** | Throttle connections per second.  Set to 0 (zero) to disable throttling. | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **ipv6** | **String** | __Read-only__ This NodeBalancer&#39;s public IPv6 address. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This NodeBalancer&#39;s unique ID. | [optional][readonly] |
| **transfer** | [**NodeBalancer4Transfer**](NodeBalancer4Transfer.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancer6.new(
  updated: null,
  label: balancer12345,
  hostname: 192.0.2.1.ip.linodeusercontent.com,
  region: us-east,
  ipv4: 203.0.113.1,
  created: null,
  client_conn_throttle: 0,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  ipv6: null,
  id: 12345,
  transfer: null
)
```

