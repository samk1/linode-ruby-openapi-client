# LinodeOpenapiClient::GetBackups200ResponseSnapshotCurrentDisksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** |  | [optional] |
| **label** | **String** |  | [optional] |
| **filesystem** | **String** | The Disk filesystem can be one of:    - raw - No filesystem, just a raw binary stream.   - swap - Linux swap area.   - ext3 - The ext3 journaling filesystem for Linux.   - ext4 - The ext4 journaling filesystem for Linux.   - initrd - initrd (uncompressed initrd, ext2, max 32 MB). | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBackups200ResponseSnapshotCurrentDisksInner.new(
  size: 9001,
  label: My Debian 9 Disk,
  filesystem: ext4
)
```

