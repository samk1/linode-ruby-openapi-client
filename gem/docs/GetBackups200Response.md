# LinodeOpenapiClient::GetBackups200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automatic** | [**Array&lt;GetBackups200ResponseAutomaticInner&gt;**](GetBackups200ResponseAutomaticInner.md) |  | [optional] |
| **snapshot** | [**GetBackups200ResponseSnapshot**](GetBackups200ResponseSnapshot.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBackups200Response.new(
  automatic: null,
  snapshot: null
)
```

