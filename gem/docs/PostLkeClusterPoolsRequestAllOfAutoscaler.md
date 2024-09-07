# LinodeOpenapiClient::PostLkeClusterPoolsRequestAllOfAutoscaler

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max** | **Integer** | The maximum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. Defaults to the value provided by the &#x60;count&#x60; field. | [optional] |
| **min** | **Integer** | The minimum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. | [optional] |
| **enabled** | **Boolean** | Whether autoscaling is enabled for this Node Pool. Defaults to &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterPoolsRequestAllOfAutoscaler.new(
  max: 12,
  min: 3,
  enabled: true
)
```

