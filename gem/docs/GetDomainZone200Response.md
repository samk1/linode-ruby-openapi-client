# LinodeOpenapiClient::GetDomainZone200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zone_file** | **Array&lt;String&gt;** | The lines of the zone file for the last rendered zone for this domain. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDomainZone200Response.new(
  zone_file: [&quot;; example.com [123]&quot;,&quot;$TTL 864000&quot;,&quot;@  IN  SOA  ns1.linode.com. user.example.com. 2021000066 14400 14400 1209600 86400&quot;,&quot;@    NS  ns1.linode.com.&quot;,&quot;@    NS  ns2.linode.com.&quot;,&quot;@    NS  ns3.linode.com.&quot;,&quot;@    NS  ns4.linode.com.&quot;,&quot;@    NS  ns5.linode.com.&quot;]
)
```

