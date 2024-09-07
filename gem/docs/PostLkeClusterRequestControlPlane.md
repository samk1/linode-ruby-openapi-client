# LinodeOpenapiClient::PostLkeClusterRequestControlPlane

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **high_availability** | **Boolean** | Defines whether High Availability is enabled for the Control Plane Components of the cluster. Defaults to &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRequestControlPlane.new(
  high_availability: true
)
```

