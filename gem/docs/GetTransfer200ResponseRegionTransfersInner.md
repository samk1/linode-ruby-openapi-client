# LinodeOpenapiClient::GetTransfer200ResponseRegionTransfersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **used** | **Integer** | __Read-only__ The amount of network usage you have used this billing cycle for this Region. | [optional][readonly] |
| **quota** | **Integer** | __Read-only__ The amount of network usage allowed this billing cycle for this Region. | [optional][readonly] |
| **billable** | **Integer** | __Read-only__ The amount of your transfer pool that is billable this billing cycle for this Region. | [optional][readonly] |
| **id** | **String** | The Region ID for this network utilization data. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTransfer200ResponseRegionTransfersInner.new(
  used: 1,
  quota: 5010,
  billable: 0,
  id: us-east
)
```

