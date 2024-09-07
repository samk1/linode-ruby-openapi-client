# LinodeOpenapiClient::PostResizeDiskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** | The desired size, in MB, of the disk. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostResizeDiskRequest.new(
  size: 2048
)
```

