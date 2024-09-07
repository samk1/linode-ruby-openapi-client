# LinodeOpenapiClient::TransferRegionTransfersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Region ID for this network utilization data. | [optional] |
| **billable** | **Integer** | __Read-only__ The amount of your transfer pool that is billable this billing cycle for this Region. | [optional][readonly] |
| **used** | **Integer** | __Read-only__ The amount of network usage you have used this billing cycle for this Region. | [optional][readonly] |
| **quota** | **Integer** | __Read-only__ The amount of network usage allowed this billing cycle for this Region. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::TransferRegionTransfersInner.new(
  id: us-east,
  billable: 0,
  used: 1,
  quota: 5010
)
```

