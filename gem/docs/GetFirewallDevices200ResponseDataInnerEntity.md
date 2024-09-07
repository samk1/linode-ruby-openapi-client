# LinodeOpenapiClient::GetFirewallDevices200ResponseDataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The entity&#39;s ID. | [optional] |
| **label** | **String** | __Read-only__ The entity&#39;s label. | [optional][readonly] |
| **type** | **String** | The entity&#39;s type. | [optional] |
| **url** | **String** | __Read-only__ The API URL path you can use to access this entity. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallDevices200ResponseDataInnerEntity.new(
  id: 123,
  label: my-linode,
  type: linode,
  url: /v4/linode/instances/123
)
```

