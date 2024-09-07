# LinodeOpenapiClient::NodeBalancer2Transfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | __Read-only__ The total transfer, in MB, used by this NodeBalancer this month. | [optional][readonly] |
| **out** | **Float** | __Read-only__ The total inbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |
| **_in** | **Float** | __Read-only__ The total outbound transfer, in MB, used for this NodeBalancer this month. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::NodeBalancer2Transfer.new(
  total: 32.4607810974121,
  out: 3.54877281188965,
  _in: 28.9120082855225
)
```

