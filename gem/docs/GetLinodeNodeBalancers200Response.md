# LinodeOpenapiClient::GetLinodeNodeBalancers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;NodeBalancer6&gt;**](NodeBalancer6.md) |  | [optional] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeNodeBalancers200Response.new(
  pages: 1,
  page: 1,
  data: null,
  results: 1
)
```

