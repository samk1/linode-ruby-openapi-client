# LinodeOpenapiClient::GetDatabasesMysqlInstanceBackups200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | __Filterable__ A time value given in a combined date and time format that represents when the database backup was created. | [optional] |
| **id** | **Integer** | The ID of the database backup object. | [optional] |
| **type** | **String** | __Filterable__ The type of database backup, determined by how the backup was created. | [optional] |
| **label** | **String** | The database backup&#39;s label, for display purposes only.  Must include only ASCII letters or numbers. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesMysqlInstanceBackups200ResponseAllOfDataInner.new(
  created: null,
  id: 123,
  type: auto,
  label: Scheduled - 02/04/22 11:11 UTC-XcCRmI
)
```

