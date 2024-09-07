# LinodeOpenapiClient::GetLinodeTransferByYearMonth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bytes_in** | **Integer** | __Read-only__ The amount of inbound public network traffic received by this Linode, in bytes, for a specific year/month. | [optional][readonly] |
| **bytes_out** | **Integer** | __Read-only__ The amount of outbound public network traffic sent by this Linode, in bytes, for a specific year/month. | [optional][readonly] |
| **bytes_total** | **Integer** | __Read-only__ The total amount of public network traffic sent and received by this Linode, in bytes, for a specific year/month. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTransferByYearMonth200Response.new(
  bytes_in: 30471077120,
  bytes_out: 22956600198,
  bytes_total: 53427677318
)
```

