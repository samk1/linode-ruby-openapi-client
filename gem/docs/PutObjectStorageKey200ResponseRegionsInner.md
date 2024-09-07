# LinodeOpenapiClient::PutObjectStorageKey200ResponseRegionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **s3_endpoint** | **String** | The S3-compatible hostname you can use to access your Object Storage buckets in this region. | [optional] |
| **id** | **String** | Identifies each region where you can use the Object Storage key. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutObjectStorageKey200ResponseRegionsInner.new(
  s3_endpoint: us-west-00.linodeobjects.com,
  id: us-west
)
```

