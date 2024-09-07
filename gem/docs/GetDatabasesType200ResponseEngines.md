# LinodeOpenapiClient::GetDatabasesType200ResponseEngines

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mysql** | [**Array&lt;GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner&gt;**](GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner.md) | Pricing details for MySQL Managed Databases. | [optional] |
| **postgresql** | [**Array&lt;GetDatabasesType200ResponseEnginesPostgresqlInner&gt;**](GetDatabasesType200ResponseEnginesPostgresqlInner.md) | Pricing details for PostgreSQL Managed Databases. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesType200ResponseEngines.new(
  mysql: null,
  postgresql: null
)
```

