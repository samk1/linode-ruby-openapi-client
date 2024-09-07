# LinodeOpenapiClient::PostObjectStorageBucketAccessRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | **String** | The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly. | [optional] |
| **cors_enabled** | **Boolean** | If true, the bucket will be created with CORS enabled for all origins. For more fine-grained controls of CORS, use the S3 API directly. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageBucketAccessRequest.new(
  acl: private,
  cors_enabled: true
)
```

