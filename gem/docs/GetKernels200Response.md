# LinodeOpenapiClient::GetKernels200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;GetKernels200ResponseDataInner&gt;**](GetKernels200ResponseDataInner.md) |  | [optional] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetKernels200Response.new(
  pages: 1,
  data: null,
  page: 1,
  results: 1
)
```

