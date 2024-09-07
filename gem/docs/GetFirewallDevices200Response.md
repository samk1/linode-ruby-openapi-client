# LinodeOpenapiClient::GetFirewallDevices200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **data** | [**Array&lt;GetFirewallDevices200ResponseDataInner&gt;**](GetFirewallDevices200ResponseDataInner.md) |  | [optional] |
| **pages** | **Integer** | __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination). | [optional][readonly] |
| **results** | **Integer** | __Read-only__ The total number of results. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetFirewallDevices200Response.new(
  page: 1,
  data: [{&quot;updated&quot;:&quot;2018-01-02 00:01:01&quot;,&quot;created&quot;:&quot;2018-01-01 00:01:01&quot;,&quot;entity&quot;:{&quot;id&quot;:123,&quot;label&quot;:&quot;my-linode&quot;,&quot;type&quot;:&quot;linode&quot;,&quot;url&quot;:&quot;/v4/linode/instances/123&quot;},&quot;id&quot;:456},{&quot;created&quot;:&quot;2018-01-01 00:01:01&quot;,&quot;updated&quot;:&quot;2018-01-02 00:01:01&quot;,&quot;entity&quot;:{&quot;id&quot;:321,&quot;type&quot;:&quot;nodebalancer&quot;,&quot;url&quot;:&quot;/v4/nodebalancers/123&quot;,&quot;label&quot;:&quot;my-nodebalancer&quot;},&quot;id&quot;:654}],
  pages: 1,
  results: 1
)
```

