# LinodeOpenapiClient::GetAvailability200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;GetAvailability200ResponseAllOfDataInner&gt;**](GetAvailability200ResponseAllOfDataInner.md) |  | [optional] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetAvailability200Response.new(
  data: null,
  results: 1,
  pages: 1,
  page: 1
)
```

