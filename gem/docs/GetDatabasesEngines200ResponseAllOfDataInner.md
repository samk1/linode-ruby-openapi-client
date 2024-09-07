# LinodeOpenapiClient::GetDatabasesEngines200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_disk_size_gb** | **Integer** | The total disk size of the database in GB. | [optional] |
| **engine** | **String** | __Filterable__ The Managed Database engine type. | [optional] |
| **version** | **String** | __Filterable__ The Managed Database engine version. | [optional] |
| **id** | **String** | The Managed Database engine ID in engine/version format. | [optional] |
| **used_disk_size_gb** | **Integer** | The used space of the database in GB. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesEngines200ResponseAllOfDataInner.new(
  total_disk_size_gb: 15,
  engine: mysql,
  version: 8.0.26,
  id: mysql/8.0.26,
  used_disk_size_gb: 2
)
```

