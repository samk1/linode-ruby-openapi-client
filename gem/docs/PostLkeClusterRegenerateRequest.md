# LinodeOpenapiClient::PostLkeClusterRegenerateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubeconfig** | **Boolean** | Whether to delete and regenerate the Kubeconfig file for this Cluster. | [optional][default to false] |
| **servicetoken** | **Boolean** | Whether to delete and regenerate the service access token for this Cluster. | [optional][default to false] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRegenerateRequest.new(
  kubeconfig: true,
  servicetoken: true
)
```

