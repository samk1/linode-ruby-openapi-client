# LinodeOpenapiClient::Linode3Backups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_successful** | **Time** | __Read-only__ The last successful backup date. &#39;null&#39; if there was no previous backup. | [optional][readonly] |
| **schedule** | [**LinodeBackupsSchedule**](LinodeBackupsSchedule.md) |  | [optional] |
| **available** | **Boolean** | __Read-only__ Whether Backups for this Linode are available for restoration.  Backups undergoing maintenance are not available for restoration. | [optional][readonly] |
| **enabled** | **Boolean** | __Read-only__ If this Linode has the Backup service enabled. To enable backups, run [Enable backups](https://techdocs.akamai.com/linode-api/reference/post-enable-backups). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Linode3Backups.new(
  last_successful: null,
  schedule: null,
  available: true,
  enabled: true
)
```

