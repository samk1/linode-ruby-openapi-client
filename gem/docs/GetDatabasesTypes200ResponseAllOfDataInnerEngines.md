# LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEngines

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postgresql** | [**Array&lt;GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner&gt;**](GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner.md) | Pricing details for PostgreSQL Managed Databases. | [optional] |
| **mysql** | [**Array&lt;GetDatabasesTypes200ResponseAllOfDataInnerEnginesMysqlInner&gt;**](GetDatabasesTypes200ResponseAllOfDataInnerEnginesMysqlInner.md) | Pricing details for MySQL Managed Databases. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEngines.new(
  postgresql: null,
  mysql: null
)
```

