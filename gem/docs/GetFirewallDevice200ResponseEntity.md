# LinodeOpenapiClient::GetFirewallDevice200ResponseEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The entity&#39;s type. | [optional] |
| **label** | **String** | __Read-only__ The entity&#39;s label. | [optional][readonly] |
| **url** | **String** | __Read-only__ The API URL path you can use to access this entity. | [optional][readonly] |
| **id** | **Integer** | The entity&#39;s ID. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallDevice200ResponseEntity.new(
  type: linode,
  label: my-linode,
  url: /v4/linode/instances/123,
  id: 123
)
```

