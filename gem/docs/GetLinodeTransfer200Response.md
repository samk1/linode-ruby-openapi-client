# LinodeOpenapiClient::GetLinodeTransfer200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable** | **Integer** | __Read-only__ The amount of network transfer this Linode has used, in GB, past your monthly quota. | [optional][readonly] |
| **used** | **Integer** | __Read-only__ The amount of network transfer used by this Linode, in bytes, for the current month&#39;s billing cycle. | [optional][readonly] |
| **quota** | **Integer** | __Read-only__ The amount of network transfer this Linode adds to your transfer pool, in GB, for the current month&#39;s billing cycle. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeTransfer200Response.new(
  billable: 0,
  used: 22956600198,
  quota: 2000
)
```

