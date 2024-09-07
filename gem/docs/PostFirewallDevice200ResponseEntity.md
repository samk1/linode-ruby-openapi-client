# LinodeOpenapiClient::PostFirewallDevice200ResponseEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | __Read-only__ The API URL path you can use to access this entity. | [optional][readonly] |
| **label** | **String** | __Read-only__ The entity&#39;s label. | [optional][readonly] |
| **type** | **String** | The entity&#39;s type. | [optional] |
| **id** | **Integer** | The entity&#39;s ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostFirewallDevice200ResponseEntity.new(
  url: /v4/linode/instances/123,
  label: my-linode,
  type: linode,
  id: 123
)
```

