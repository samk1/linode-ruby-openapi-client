# LinodeOpenapiClient::PutObjectStorageBucketAclRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The &#x60;name&#x60; of the object for which to update its Access Control List (ACL). Run the [List Object Storage bucket contents](https://techdocs.akamai.com/linode-api/reference/get-object-storage-bucket-content) operation to access all object names in a bucket. |  |
| **acl** | **String** | The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutObjectStorageBucketAclRequest.new(
  name: null,
  acl: public-read
)
```

