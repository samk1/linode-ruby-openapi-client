# LinodeOpenapiClient::AddedGetEnrolledBetaPrograms200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;AddedGetEnrolledBetaPrograms200AllOfData&gt;**](AddedGetEnrolledBetaPrograms200AllOfData.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetEnrolledBetaPrograms200.new(
  results: 1,
  page: 1,
  pages: 1,
  data: null
)
```

