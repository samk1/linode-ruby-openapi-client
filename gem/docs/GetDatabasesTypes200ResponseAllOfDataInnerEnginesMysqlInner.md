# LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesMysqlInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | [**GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice**](GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice.md) |  | [optional] |
| **quantity** | **Integer** | The number of nodes for the Managed Database cluster for this subscription tier. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesMysqlInner.new(
  price: null,
  quantity: 1
)
```

