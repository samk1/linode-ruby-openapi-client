# LinodeOpenapiClient::GetBackup200ResponseDisksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filesystem** | **String** | The Disk filesystem can be one of:    - raw - No filesystem, just a raw binary stream.   - swap - Linux swap area.   - ext3 - The ext3 journaling filesystem for Linux.   - ext4 - The ext4 journaling filesystem for Linux.   - initrd - initrd (uncompressed initrd, ext2, max 32 MB). | [optional] |
| **label** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBackup200ResponseDisksInner.new(
  filesystem: ext4,
  label: My Debian 9 Disk,
  size: 9001
)
```

