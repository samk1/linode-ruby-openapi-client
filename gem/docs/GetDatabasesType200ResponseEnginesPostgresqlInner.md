# LinodeOpenapiClient::GetDatabasesType200ResponseEnginesPostgresqlInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | The number of nodes for the Managed Database cluster for this subscription tier. | [optional] |
| **price** | [**GetDatabasesType200ResponseEnginesPostgresqlInnerPrice**](GetDatabasesType200ResponseEnginesPostgresqlInnerPrice.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesType200ResponseEnginesPostgresqlInner.new(
  quantity: 1,
  price: null
)
```

