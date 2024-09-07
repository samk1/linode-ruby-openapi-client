# LinodeOpenapiClient::PostAddLinodeDisk200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filesystem** | **String** | The Disk filesystem can be one of:    - raw - No filesystem, just a raw binary stream.   - swap - Linux swap area.   - ext3 - The ext3 journaling filesystem for Linux.   - ext4 - The ext4 journaling filesystem for Linux.   - initrd - initrd (uncompressed initrd, ext2, max 32 MB). | [optional] |
| **id** | **Integer** | __Read-only__ This Disk&#39;s ID which must be provided for all operations impacting this Disk. | [optional][readonly] |
| **label** | **String** | __Filterable__ The Disk&#39;s label is for display purposes only. | [optional] |
| **updated** | **Time** | __Read-only__ When this Disk was last updated. | [optional][readonly] |
| **status** | **String** | __Read-only__ A brief description of this Disk&#39;s current state. This field may change without direct action from you, as a result of operations performed to the Disk or the Linode containing the Disk. | [optional][readonly] |
| **size** | **Integer** | __Filterable__ The size of the Disk in MB. | [optional] |
| **created** | **Time** | __Read-only__ When this Disk was created. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddLinodeDisk200Response.new(
  filesystem: ext4,
  id: 25674,
  label: Debian 9 Disk,
  updated: null,
  status: ready,
  size: 48640,
  created: null
)
```

