# LinodeOpenapiClient::Volume7

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | __Read-only__ The current status of the volume.  Can be one of:    - &#x60;creating&#x60; - the Volume is being created and is not yet available     for use.   - &#x60;active&#x60; - the Volume is online and available for use.   - &#x60;resizing&#x60; - the Volume is in the process of upgrading     its current capacity. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ When this Volume was last updated. | [optional][readonly] |
| **linode_id** | **Integer** | If a Volume is attached to a specific Linode, the ID of that Linode will be displayed here. | [optional] |
| **hardware_type** | **String** | __Read-only__ The storage type of this Volume. | [optional][readonly] |
| **label** | **String** | __Filterable__ The Volume&#39;s label is for display purposes only. | [optional] |
| **region** | **String** | __Read-only__ The unique ID of this Region. | [optional][readonly] |
| **size** | **Integer** | The Volume&#39;s size, in GiB. | [optional] |
| **created** | **Time** | __Read-only__ When this Volume was created. | [optional][readonly] |
| **linode_label** | **String** | __Read-only__ If a Volume is attached to a specific Linode, the label of that Linode will be displayed here. | [optional][readonly] |
| **filesystem_path** | **String** | __Read-only__ The full filesystem path for the Volume based on the Volume&#39;s label. Path is /dev/disk/by-id/scsi-0Linode_Volume_ + Volume label. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Read-only__ The unique ID of this Volume. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Volume7.new(
  status: active,
  updated: null,
  linode_id: 12346,
  hardware_type: nvme,
  label: my-volume,
  region: us-east,
  size: 30,
  created: null,
  linode_label: linode123,
  filesystem_path: /dev/disk/by-id/scsi-0Linode_Volume_my-volume,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 12345
)
```

