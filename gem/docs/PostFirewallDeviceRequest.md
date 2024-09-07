# LinodeOpenapiClient::PostFirewallDeviceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The entity&#39;s ID. |  |
| **label** | **String** | __Read-only__ The entity&#39;s label. | [optional][readonly] |
| **type** | **String** | The entity&#39;s type. |  |
| **url** | **String** | __Read-only__ The API URL path you can use to access this entity. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostFirewallDeviceRequest.new(
  id: 123,
  label: my-linode,
  type: linode,
  url: /v4/linode/instances/123
)
```

