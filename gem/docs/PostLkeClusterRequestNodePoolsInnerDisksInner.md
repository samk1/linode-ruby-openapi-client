# LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInnerDisksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | This custom disk partition&#39;s filesystem type. | [optional] |
| **size** | **Integer** | The size of this custom disk partition in MB.    - The size of this disk partition must not exceed the capacity of the node&#39;s plan type. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLkeClusterRequestNodePoolsInnerDisksInner.new(
  type: ext-4,
  size: 1024
)
```

