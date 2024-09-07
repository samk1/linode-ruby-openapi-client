# LinodeOpenapiClient::GetManagedCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;GetManagedCredentials200ResponseDataInner&gt;**](GetManagedCredentials200ResponseDataInner.md) |  | [optional] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedCredentials200Response.new(
  page: 1,
  data: null,
  pages: 1,
  results: 1
)
```

