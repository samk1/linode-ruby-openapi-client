# LinodeOpenapiClient::GetTransfer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_transfers** | [**Array&lt;GetTransfer200ResponseRegionTransfersInner&gt;**](GetTransfer200ResponseRegionTransfersInner.md) |  | [optional] |
| **used** | **Integer** | __Read-only__ The amount of network usage you have used this billing cycle. | [optional][readonly] |
| **quota** | **Integer** | __Read-only__ The amount of network usage allowed this billing cycle. | [optional][readonly] |
| **billable** | **Integer** | __Read-only__ The amount of your transfer pool that is billable this billing cycle. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTransfer200Response.new(
  region_transfers: null,
  used: 2,
  quota: 9141,
  billable: 0
)
```

