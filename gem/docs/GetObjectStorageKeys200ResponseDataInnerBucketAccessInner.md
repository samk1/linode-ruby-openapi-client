# LinodeOpenapiClient::GetObjectStorageKeys200ResponseDataInnerBucketAccessInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The region where the Object Store &#x60;bucket_name&#x60; resides. | [optional] |
| **cluster** | **String** | Identifies the legacy cluster where this key can be used. The key grants access to each specified &#x60;bucket_name&#x60;, based on the &#x60;permissions&#x60; set. To support backward compatibility, the API generates this value, based on the &#x60;region&#x60; set for a new key. See [Create an Object Storage key](https://techdocs.akamai.com/linode-api/reference/post-object-storage-keys) for more information. | [optional] |
| **bucket_name** | **String** | The name of the bucket the key can access in the &#x60;region&#x60;. | [optional] |
| **permissions** | **String** | The level of access the key grants to the &#x60;bucket_name&#x60;. Keys with &#x60;read_write&#x60; access can manage content in the &#x60;bucket_name&#x60;, while &#x60;read_only&#x60; can be used to view content. See [Create an Object Storage key(ref:post-object-storage-keys) for more details. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageKeys200ResponseDataInnerBucketAccessInner.new(
  region: us-west,
  cluster: us-west-1,
  bucket_name: example-bucket,
  permissions: read_only
)
```

