# LinodeOpenapiClient::PostDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **master_ips** | **Array&lt;String&gt;** | The IP addresses representing the master DNS for this Domain. At least one value is required for &#x60;type&#x60; slave Domains. The total combined length of all data within this array cannot exceed 1000 characters. | [optional] |
| **ttl_sec** | **Integer** | \&quot;Time to Live\&quot; - the amount of time in seconds that this Domain&#39;s records may be cached by resolvers or other domain servers.  - Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200. - Any other value is rounded up to the nearest valid value. - A value of 0 is equivalent to the default value of 86400. | [optional][default to 0] |
| **retry_sec** | **Integer** | The interval, in seconds, at which a failed refresh should be retried.  - Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.  - Any other value is rounded up to the nearest valid value.  - A value of 0 is equivalent to the default value of 14400. | [optional][default to 0] |
| **axfr_ips** | **Array&lt;String&gt;** | The list of IPs that may perform a zone transfer for this Domain. The total combined length of all data within this array cannot exceed 1000 characters.  __Note__. This is potentially dangerous, and should be set to an empty list unless you intend to use it. | [optional] |
| **soa_email** | **String** | Start of Authority email address. This is required for &#x60;type&#x60; master Domains. | [optional] |
| **description** | **String** | A description for this Domain. This is for display purposes only. | [optional] |
| **type** | **String** | Whether this Domain represents the authoritative source of information for the domain it describes (&#x60;master&#x60;), or whether it is a read-only copy of a master (&#x60;slave&#x60;). |  |
| **refresh_sec** | **Integer** | The amount of time in seconds before this Domain should be refreshed.  - Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.  - Any other value is rounded up to the nearest valid value.  - A value of 0 is equivalent to the default value of 14400. | [optional][default to 0] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Read-only__ This Domain&#39;s unique ID. | [optional][readonly] |
| **status** | **String** | Used to control whether this Domain is currently being rendered. | [optional][default to &#39;active&#39;] |
| **domain** | **String** | __Filterable__ The domain this Domain represents. Domain labels cannot be longer than 63 characters and must conform to [RFC1035](https://tools.ietf.org/html/rfc1035). Domains must be unique on Linode&#39;s platform, including across different Linode accounts; there cannot be two Domains representing the same domain. |  |
| **group** | **String** | __Filterable__ The group this Domain belongs to.  This is for display purposes only. | [optional] |
| **expire_sec** | **Integer** | The amount of time in seconds that may pass before this Domain is no longer authoritative.  - Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.  - Any other value is rounded up to the nearest valid value.  - A value of 0 is equivalent to the default value of 1209600. | [optional][default to 0] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostDomainRequest.new(
  master_ips: [],
  ttl_sec: 300,
  retry_sec: 300,
  axfr_ips: [],
  soa_email: admin@example.org,
  description: null,
  type: master,
  refresh_sec: 300,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 1234,
  status: active,
  domain: example.org,
  group: null,
  expire_sec: 300
)
```

