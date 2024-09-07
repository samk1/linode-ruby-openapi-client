# LinodeOpenapiClient::NodeBalancerTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **out** | **Float** | __Read-only__ The total inbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |
| **_in** | **Float** | __Read-only__ The total outbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |
| **total** | **Float** | __Read-only__ The total transfer, in MB, used by this NodeBalancer this month. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancerTransfer.new(
  out: 3.54877281188965,
  _in: 28.9120082855225,
  total: 32.4607810974121
)
```

