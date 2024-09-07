# LinodeOpenapiClient::GetObjectStorageKey200ResponseRegionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifies each region where you can use the Object Storage key. | [optional] |
| **s3_endpoint** | **String** | The S3-compatible hostname you can use to access the Object Storage buckets in this region. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageKey200ResponseRegionsInner.new(
  id: us-west,
  s3_endpoint: us-west-00.linodeobjects.com
)
```

