# LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerLabels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The Kubernetes label value. | [optional] |
| **key** | **String** | The Kubernetes label key. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerLabels.new(
  value: teamUSA,
  key: example.com/my-app
)
```

