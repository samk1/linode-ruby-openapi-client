# LinodeOpenapiClient::PostNodeBalancerConfigRequestNodesStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **up** | **Integer** | __Read-only__ The number of backends considered to be \&quot;UP\&quot; and healthy, and that are serving requests. | [optional][readonly] |
| **down** | **Integer** | __Read-only__ The number of backends considered to be \&quot;DOWN\&quot; and unhealthy.  These are not in rotation, and not serving requests. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostNodeBalancerConfigRequestNodesStatus.new(
  up: 4,
  down: 0
)
```

