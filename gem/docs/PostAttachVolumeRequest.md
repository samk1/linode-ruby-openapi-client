# LinodeOpenapiClient::PostAttachVolumeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linode_id** | **Integer** | The ID of the Linode to attach the volume to. |  |
| **config_id** | **Integer** | The ID of the Linode Config to include this Volume in. Must belong to the Linode referenced by &#x60;linode_id&#x60;. If not given, the last booted Config will be chosen. | [optional] |
| **persist_across_boots** | **Boolean** | Defaults to true, if false is provided, the Volume will not be attached to the Linode Config. In this case more than 8 Volumes may be attached to a Linode if a Linode has 16GB of RAM or more. The number of volumes that can be attached is equal to the number of GB of RAM that the Linode has, up to a maximum of 64. &#x60;config_id&#x60; should not be passed if this is set to false and linode_id must be passed. The Linode must be running. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAttachVolumeRequest.new(
  linode_id: null,
  config_id: 23456,
  persist_across_boots: null
)
```

