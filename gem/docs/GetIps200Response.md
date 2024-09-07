# LinodeOpenapiClient::GetIps200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |
| **data** | [**Array&lt;GetIps200ResponseAllOfDataInner&gt;**](GetIps200ResponseAllOfDataInner.md) | IP addresses that exist in Linode&#39;s system, either IPv4 or IPv6, specific to the response for the [List IP addresses](https://techdocs.akamai.com/linode-api/reference/get-ips) operation. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetIps200Response.new(
  page: 1,
  pages: 1,
  results: 1,
  data: null
)
```

