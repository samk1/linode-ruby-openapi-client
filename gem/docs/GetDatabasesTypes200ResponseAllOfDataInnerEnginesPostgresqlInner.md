# LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | The number of nodes for the Managed Database cluster for this subscription tier. | [optional] |
| **price** | [**GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice**](GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInnerPrice.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInnerEnginesPostgresqlInner.new(
  quantity: 1,
  price: null
)
```

