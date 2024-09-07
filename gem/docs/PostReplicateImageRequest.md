# LinodeOpenapiClient::PostReplicateImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regions** | **Array&lt;String&gt;** | The unique identifier for each compute region. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostReplicateImageRequest.new(
  regions: [&quot;us-iad&quot;,&quot;us-west&quot;]
)
```

