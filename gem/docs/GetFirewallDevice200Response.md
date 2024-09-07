# LinodeOpenapiClient::GetFirewallDevice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Time** | __Filterable__, __Read-only__ When this Device was last updated. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ When this Device was created. | [optional][readonly] |
| **entity** | [**GetFirewallDevice200ResponseEntity**](GetFirewallDevice200ResponseEntity.md) |  | [optional] |
| **id** | **Integer** | __Filterable__ The Device&#39;s unique ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallDevice200Response.new(
  updated: null,
  created: null,
  entity: null,
  id: 123
)
```

