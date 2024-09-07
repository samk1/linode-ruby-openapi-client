# LinodeOpenapiClient::GetFirewallDevices200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Filterable__ The Device&#39;s unique ID. | [optional] |
| **entity** | [**GetFirewallDevices200ResponseDataInnerEntity**](GetFirewallDevices200ResponseDataInnerEntity.md) |  | [optional] |
| **updated** | **Time** | __Filterable__, __Read-only__ When this Device was last updated. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ When this Device was created. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallDevices200ResponseDataInner.new(
  id: 123,
  entity: null,
  updated: null,
  created: null
)
```

