# LinodeOpenapiClient::GetDatabasesEngine200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | __Filterable__ The Managed Database engine version. | [optional] |
| **engine** | **String** | __Filterable__ The Managed Database engine type. | [optional] |
| **total_disk_size_gb** | **Integer** | The total disk size of the database in GB. | [optional] |
| **used_disk_size_gb** | **Integer** | The used space of the database in GB. | [optional] |
| **id** | **String** | The Managed Database engine ID in engine/version format. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesEngine200Response.new(
  version: 8.0.26,
  engine: mysql,
  total_disk_size_gb: 15,
  used_disk_size_gb: 2,
  id: mysql/8.0.26
)
```

