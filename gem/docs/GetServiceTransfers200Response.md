# LinodeOpenapiClient::GetServiceTransfers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;GetServiceTransfers200ResponseDataInner&gt;**](GetServiceTransfers200ResponseDataInner.md) |  | [optional] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetServiceTransfers200Response.new(
  data: null,
  page: 1,
  pages: 1,
  results: 1
)
```

