# LinodeOpenapiClient::AddedGetMaintenance200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;AddedGetMaintenance200DataInner&gt;**](AddedGetMaintenance200DataInner.md) |  | [optional] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetMaintenance200.new(
  pages: 1,
  page: 1,
  data: null,
  results: 1
)
```

