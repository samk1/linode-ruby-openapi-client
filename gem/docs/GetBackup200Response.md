# LinodeOpenapiClient::GetBackup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **finished** | **Time** | __Read-only__ The date the Backup completed. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ The date the Backup was most recently updated. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current state of a specific Backup. | [optional][readonly] |
| **disks** | [**Array&lt;GetBackup200ResponseDisksInner&gt;**](GetBackup200ResponseDisksInner.md) | __Read-only__ A list of the disks that are part of the Backup. | [optional][readonly] |
| **type** | **String** | __Read-only__ This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time. | [optional][readonly] |
| **label** | **String** | A label for Backups that are of type &#x60;snapshot&#x60;. | [optional] |
| **available** | **Boolean** | __Read-only__ Whether this Backup is available for restoration.  Backups undergoing maintenance are not available for restoration. | [optional][readonly] |
| **configs** | **Array&lt;String&gt;** | __Read-only__ A list of the labels of the Configuration profiles that are part of the Backup. | [optional][readonly] |
| **created** | **Time** | __Read-only__ The date the Backup was taken. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID of this Backup. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBackup200Response.new(
  finished: null,
  updated: null,
  status: successful,
  disks: null,
  type: snapshot,
  label: Webserver-Backup-2018,
  available: true,
  configs: null,
  created: null,
  id: 123456
)
```

