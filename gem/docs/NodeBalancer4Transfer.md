# LinodeOpenapiClient::NodeBalancer4Transfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_in** | **Float** | __Read-only__ The total outbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |
| **out** | **Float** | __Read-only__ The total inbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |
| **total** | **Float** | __Read-only__ The total transfer, in MB, used by this NodeBalancer this month. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancer4Transfer.new(
  _in: 28.9120082855225,
  out: 3.54877281188965,
  total: 32.4607810974121
)
```

