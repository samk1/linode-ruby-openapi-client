# LinodeOpenapiClient::GetDatabasesMysqlInstanceBackups200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **data** | [**Array&lt;GetDatabasesMysqlInstanceBackups200ResponseAllOfDataInner&gt;**](GetDatabasesMysqlInstanceBackups200ResponseAllOfDataInner.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesMysqlInstanceBackups200Response.new(
  page: 1,
  pages: 1,
  results: 1,
  data: null
)
```

