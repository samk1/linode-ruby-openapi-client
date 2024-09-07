# LinodeOpenapiClient::GetDatabasesPostgreSqlInstanceBackups200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | __Filterable__ The type of database backup, determined by how the backup was created. | [optional] |
| **label** | **String** | The database backup&#39;s label, for display purposes only.  Must include only ASCII letters or numbers. | [optional] |
| **id** | **Integer** | The ID of the database backup object. | [optional] |
| **created** | **Time** | __Filterable__ A time value given in a combined date and time format that represents when the database backup was created. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesPostgreSqlInstanceBackups200ResponseAllOfDataInner.new(
  type: auto,
  label: Scheduled - 02/04/22 11:11 UTC-XcCRmI,
  id: 123,
  created: null
)
```

