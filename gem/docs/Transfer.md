# LinodeOpenapiClient::Transfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_transfers** | [**Array&lt;TransferRegionTransfersInner&gt;**](TransferRegionTransfersInner.md) |  | [optional] |
| **billable** | **Integer** | __Read-only__ The amount of your transfer pool that is billable this billing cycle. | [optional][readonly] |
| **used** | **Integer** | __Read-only__ The amount of network usage you have used this billing cycle. | [optional][readonly] |
| **quota** | **Integer** | __Read-only__ The amount of network usage allowed this billing cycle. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Transfer.new(
  region_transfers: null,
  billable: 0,
  used: 2,
  quota: 9141
)
```

