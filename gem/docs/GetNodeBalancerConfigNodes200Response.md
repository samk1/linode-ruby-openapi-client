# LinodeOpenapiClient::GetNodeBalancerConfigNodes200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;GetNodeBalancerConfigNodes200ResponseDataInner&gt;**](GetNodeBalancerConfigNodes200ResponseDataInner.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetNodeBalancerConfigNodes200Response.new(
  results: 1,
  pages: 1,
  page: 1,
  data: null
)
```

