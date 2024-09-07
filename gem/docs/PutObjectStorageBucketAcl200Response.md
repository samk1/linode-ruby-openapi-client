# LinodeOpenapiClient::PutObjectStorageBucketAcl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl** | **String** | The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly. | [optional] |
| **acl_xml** | **String** | The full XML of the object&#39;s ACL policy. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutObjectStorageBucketAcl200Response.new(
  acl: public-read,
  acl_xml: &lt;AccessControlPolicy&gt;...&lt;/AccessControlPolicy&gt;
)
```

