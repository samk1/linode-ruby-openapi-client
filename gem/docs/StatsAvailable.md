# LinodeOpenapiClient::StatsAvailable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **net_out** | [**Array&lt;StatsAvailableNetOutInner&gt;**](StatsAvailableNetOutInner.md) | Outbound network traffic stats from the last 24 hours. | [optional] |
| **cpu** | [**Array&lt;StatsAvailableCpuInner&gt;**](StatsAvailableCpuInner.md) | CPU usage stats from the last 24 hours. | [optional] |
| **swap** | [**Array&lt;StatsAvailableCpuInner&gt;**](StatsAvailableCpuInner.md) | Swap usage stats from the last 24 hours. | [optional] |
| **net_in** | [**Array&lt;StatsAvailableCpuInner&gt;**](StatsAvailableCpuInner.md) | Inbound network traffic stats from the last 24 hours. | [optional] |
| **disk** | [**Array&lt;StatsAvailableCpuInner&gt;**](StatsAvailableCpuInner.md) | Disk usage stats from the last 24 hours. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::StatsAvailable.new(
  net_out: null,
  cpu: null,
  swap: null,
  net_in: null,
  disk: null
)
```

