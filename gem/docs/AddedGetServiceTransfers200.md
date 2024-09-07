# LinodeOpenapiClient::AddedGetServiceTransfers200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **data** | [**Array&lt;AddedGetServiceTransfers200DataInner&gt;**](AddedGetServiceTransfers200DataInner.md) |  | [optional] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetServiceTransfers200.new(
  results: 1,
  data: null,
  page: 1,
  pages: 1
)
```

