# LinodeOpenapiClient::PutLkeNodePoolRequestAutoscaler

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether autoscaling is enabled for this Node Pool. Defaults to &#x60;false&#x60;. | [optional] |
| **min** | **Integer** | The minimum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. | [optional] |
| **max** | **Integer** | The maximum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. Defaults to the value provided by the &#x60;count&#x60; field. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLkeNodePoolRequestAutoscaler.new(
  enabled: true,
  min: 3,
  max: 12
)
```

