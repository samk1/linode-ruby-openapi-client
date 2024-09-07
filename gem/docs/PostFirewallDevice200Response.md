# LinodeOpenapiClient::PostFirewallDevice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Filterable__, __Read-only__ When this Device was created. | [optional][readonly] |
| **updated** | **Time** | __Filterable__, __Read-only__ When this Device was last updated. | [optional][readonly] |
| **entity** | [**PostFirewallDevice200ResponseEntity**](PostFirewallDevice200ResponseEntity.md) |  | [optional] |
| **id** | **Integer** | __Filterable__ The Device&#39;s unique ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostFirewallDevice200Response.new(
  created: null,
  updated: null,
  entity: null,
  id: 123
)
```

