# LinodeOpenapiClient::NodeBalancer1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | __Read-only__ When this NodeBalancer was last updated. | [optional][readonly] |
| **hostname** | **String** | __Read-only__ This NodeBalancer&#39;s hostname, beginning with its IP address and ending with _.ip.linodeusercontent.com_. | [optional][readonly] |
| **label** | **String** | __Filterable__ This NodeBalancer&#39;s label. These must be unique on your Account. | [optional] |
| **client_conn_throttle** | **Integer** | Throttle connections per second.  Set to 0 (zero) to disable throttling. | [optional] |
| **transfer** | [**NodeBalancerTransfer**](NodeBalancerTransfer.md) |  | [optional] |
| **region** | **String** | __Filterable__, __Read-only__ The Region where this NodeBalancer is located. NodeBalancers only support backends in the same Region. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this NodeBalancer was created. | [optional][readonly] |
| **ipv4** | **String** | __Filterable__, __Read-only__ This NodeBalancer&#39;s public IPv4 address. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Read-only__ This NodeBalancer&#39;s unique ID. | [optional][readonly] |
| **ipv6** | **String** | __Read-only__ This NodeBalancer&#39;s public IPv6 address. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancer1.new(
  updated: null,
  hostname: 192.0.2.1.ip.linodeusercontent.com,
  label: balancer12345,
  client_conn_throttle: 0,
  transfer: null,
  region: us-east,
  created: null,
  ipv4: 203.0.113.1,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 12345,
  ipv6: null
)
```

