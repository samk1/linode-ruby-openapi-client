# LinodeOpenapiClient::GetTickets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;GetTickets200ResponseDataInner&gt;**](GetTickets200ResponseDataInner.md) |  | [optional] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetTickets200Response.new(
  results: 1,
  pages: 1,
  data: null,
  page: 1
)
```

