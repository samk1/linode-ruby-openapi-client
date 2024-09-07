# LinodeOpenapiClient::GetEnrolledBetaPrograms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **data** | [**Array&lt;GetEnrolledBetaPrograms200ResponseAllOfDataInner&gt;**](GetEnrolledBetaPrograms200ResponseAllOfDataInner.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetEnrolledBetaPrograms200Response.new(
  pages: 1,
  page: 1,
  results: 1,
  data: null
)
```

