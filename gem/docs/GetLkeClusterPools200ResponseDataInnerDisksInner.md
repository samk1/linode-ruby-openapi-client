# LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerDisksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The size of this custom disk partition in MB.    - The size of this disk partition must not exceed the capacity of the node&#39;s plan type. | [optional] |
| **type** | **String** | This custom disk partition&#39;s filesystem type. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLkeClusterPools200ResponseDataInnerDisksInner.new(
  size: 1024,
  type: ext-4
)
```

