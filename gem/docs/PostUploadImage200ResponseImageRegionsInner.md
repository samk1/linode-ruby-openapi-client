# LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The unique identifier for the core compute or distributed compute region where this image is located. | [optional] |
| **status** | **String** | The status of the image in this &#x60;region&#x60;. Possible values are &#x60;available&#x60;, &#x60;creating&#x60;, &#x60;pending&#x60;, &#x60;pending deletion&#x60;, &#x60;pending replication&#x60;, or &#x60;replicating&#x60;. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner.new(
  region: us-iad,
  status: available
)
```

