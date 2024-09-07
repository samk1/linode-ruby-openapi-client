# LinodeOpenapiClient::AddedGetAvailability200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AddedGetAvailability200AllOfData&gt;**](AddedGetAvailability200AllOfData.md) |  | [optional] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetAvailability200.new(
  data: null,
  results: 1,
  page: 1,
  pages: 1
)
```

