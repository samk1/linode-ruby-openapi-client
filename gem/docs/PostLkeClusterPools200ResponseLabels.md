# LinodeOpenapiClient::PostLkeClusterPools200ResponseLabels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The Kubernetes label key. | [optional] |
| **value** | **String** | The Kubernetes label value. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterPools200ResponseLabels.new(
  key: example.com/my-app,
  value: teamUSA
)
```

