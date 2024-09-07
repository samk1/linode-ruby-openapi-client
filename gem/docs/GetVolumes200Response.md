# LinodeOpenapiClient::GetVolumes200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;Volume4&gt;**](Volume4.md) |  | [optional] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetVolumes200Response.new(
  results: 1,
  page: 1,
  data: null,
  pages: 1
)
```

