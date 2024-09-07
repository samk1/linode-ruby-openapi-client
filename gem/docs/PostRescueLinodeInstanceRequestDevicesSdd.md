# LinodeOpenapiClient::PostRescueLinodeInstanceRequestDevicesSdd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_id** | **Integer** | The Volume ID, or &#x60;null&#x60; if a Disk is assigned to this slot. | [optional] |
| **disk_id** | **Integer** | The Disk ID, or &#x60;null&#x60; if a Volume is assigned to this slot. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostRescueLinodeInstanceRequestDevicesSdd.new(
  volume_id: null,
  disk_id: 124458
)
```

