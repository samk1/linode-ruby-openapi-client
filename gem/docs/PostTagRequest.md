# LinodeOpenapiClient::PostTagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linodes** | **Array&lt;Integer&gt;** | A list of Linode IDs to apply the new Tag to.  You must be allowed to &#x60;read_write&#x60; all of the requested Linodes, or the Tag will not be created and an error will be returned. | [optional] |
| **nodebalancers** | **Array&lt;Integer&gt;** | A list of NodeBalancer IDs to apply the new Tag to. You must be allowed to &#x60;read_write&#x60; all of the requested NodeBalancers, or the Tag will not be created and an error will be returned. | [optional] |
| **domains** | **Array&lt;Integer&gt;** | A list of Domain IDs to apply the new Tag to.  You must be allowed to &#x60;read_write&#x60; all of the requested Domains, or the Tag will not be created and an error will be returned. | [optional] |
| **label** | **String** | The new Tag. |  |
| **volumes** | **Array&lt;Integer&gt;** | A list of Volume IDs to apply the new Tag to.  You must be allowed to &#x60;read_write&#x60; all of the requested Volumes, or the Tag will not be created and an error will be returned. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostTagRequest.new(
  linodes: [123,456],
  nodebalancers: [10301,10501],
  domains: [564,565],
  label: example tag,
  volumes: [9082,10003]
)
```

