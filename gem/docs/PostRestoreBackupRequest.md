# LinodeOpenapiClient::PostRestoreBackupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overwrite** | **Boolean** | If True, deletes all Disks and Configs on the target Linode before restoring.  If False, and the Disk image size is larger than the available space on the Linode, an error message indicating insufficient space is returned. | [optional] |
| **linode_id** | **Integer** | The ID of the Linode to restore a Backup to. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostRestoreBackupRequest.new(
  overwrite: true,
  linode_id: 234
)
```

