# LinodeOpenapiClient::PutLkeNodePool200ResponseAutoscaler

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min** | **Integer** | The minimum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. | [optional] |
| **max** | **Integer** | The maximum number of nodes to autoscale to. Defaults to the Node Pool&#39;s &#x60;count&#x60;. | [optional] |
| **enabled** | **Boolean** | Whether autoscaling is enabled for this Node Pool. Defaults to &#x60;false&#x60;. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLkeNodePool200ResponseAutoscaler.new(
  min: 3,
  max: 12,
  enabled: true
)
```

