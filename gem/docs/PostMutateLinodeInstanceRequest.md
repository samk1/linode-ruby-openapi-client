# LinodeOpenapiClient::PostMutateLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_auto_disk_resize** | **Boolean** | Automatically resize disks when resizing a Linode. When resizing down to a smaller plan your Linode&#39;s data must fit within the smaller disk size. | [optional][default to true] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostMutateLinodeInstanceRequest.new(
  allow_auto_disk_resize: true
)
```

