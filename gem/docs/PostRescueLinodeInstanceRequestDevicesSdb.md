# LinodeOpenapiClient::PostRescueLinodeInstanceRequestDevicesSdb

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_id** | **Integer** | The Disk ID, or &#x60;null&#x60; if a Volume is assigned to this slot. | [optional] |
| **volume_id** | **Integer** | The Volume ID, or &#x60;null&#x60; if a Disk is assigned to this slot. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostRescueLinodeInstanceRequestDevicesSdb.new(
  disk_id: 124458,
  volume_id: null
)
```

