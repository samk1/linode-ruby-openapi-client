# LinodeOpenapiClient::GetLkeClusterApiEndpoints200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint** | **String** | __Read-only__ A Kubernetes API server endpoint for this cluster. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterApiEndpoints200ResponseDataInner.new(
  endpoint: https://192.0.2.1:6443
)
```

