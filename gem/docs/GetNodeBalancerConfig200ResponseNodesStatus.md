# LinodeOpenapiClient::GetNodeBalancerConfig200ResponseNodesStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **down** | **Integer** | __Read-only__ The number of backends considered to be \&quot;DOWN\&quot; and unhealthy.  These are not in rotation, and not serving requests. | [optional][readonly] |
| **up** | **Integer** | __Read-only__ The number of backends considered to be \&quot;UP\&quot; and healthy, and that are serving requests. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerConfig200ResponseNodesStatus.new(
  down: 0,
  up: 4
)
```

