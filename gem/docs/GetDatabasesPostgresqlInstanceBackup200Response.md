# LinodeOpenapiClient::GetDatabasesPostgresqlInstanceBackup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the database backup object. | [optional] |
| **label** | **String** | The database backup&#39;s label, for display purposes only.  Must include only ASCII letters or numbers. | [optional] |
| **type** | **String** | __Filterable__ The type of database backup, determined by how the backup was created. | [optional] |
| **created** | **Time** | __Filterable__ A time value given in a combined date and time format that represents when the database backup was created. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesPostgresqlInstanceBackup200Response.new(
  id: 123,
  label: Scheduled - 02/04/22 11:11 UTC-XcCRmI,
  type: auto,
  created: null
)
```

