# LinodeOpenapiClient::PostResizeLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migration_type** | **String** | Type of migration used in moving to a new host or Linode type.  &#x60;warm&#x60;: the Linode will not power down until the migration is complete. Warm migrations are not available for DC migrations.  &#x60;cold&#x60;: the Linode will be powered down and migrated. When the migration is complete, the Linode will be powered on. | [optional][default to &#39;cold&#39;] |
| **type** | **String** | The ID representing the Linode Type. |  |
| **allow_auto_disk_resize** | **Boolean** | Automatically resize disks when resizing a Linode. When resizing down to a smaller plan your Linode&#39;s data must fit within the smaller disk size. | [optional][default to true] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostResizeLinodeInstanceRequest.new(
  migration_type: warm,
  type: g6-standard-2,
  allow_auto_disk_resize: true
)
```

