# LinodeOpenapiClient::GetBackups200ResponseAutomaticInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ The unique ID of this Backup. | [optional][readonly] |
| **configs** | **Array&lt;String&gt;** | __Read-only__ A list of the labels of the Configuration profiles that are part of the Backup. | [optional][readonly] |
| **created** | **Time** | __Read-only__ The date the Backup was taken. | [optional][readonly] |
| **label** | **String** | A label for Backups that are of type &#x60;snapshot&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **available** | **Boolean** | __Read-only__ Whether this Backup is available for restoration.  Backups undergoing maintenance are not available for restoration. | [optional][readonly] |
| **finished** | **Time** | __Read-only__ The date the Backup completed. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current state of a specific Backup. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ The date the Backup was most recently updated. | [optional][readonly] |
| **disks** | [**Array&lt;GetBackups200ResponseAutomaticInnerAllOfDisksInner&gt;**](GetBackups200ResponseAutomaticInnerAllOfDisksInner.md) | __Read-only__ A list of the disks that are part of the Backup. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBackups200ResponseAutomaticInner.new(
  id: 123456,
  configs: null,
  created: null,
  label: Webserver-Backup-2018,
  type: automatic,
  available: true,
  finished: null,
  status: successful,
  updated: null,
  disks: null
)
```

