# LinodeOpenapiClient::PostObjectStorageKeysRequestBucketAccessInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The region where the &#x60;bucket_name&#x60; you want the key to access is located.  &gt; 📘 &gt; &gt; If you repeat the same &#x60;region&#x60; across objects, the response includes a single &#x60;s3_endpoint&#x60; for this region. Use it to access all &#x60;bucket_name&#x60; entries. | [optional] |
| **bucket_name** | **String** | The &#x60;label&#x60; set for a bucket that this key grants access to. | [optional] |
| **permissions** | **String** | The level of access the key grants to the specified &#x60;bucket_name&#x60;. Keys with &#x60;read_write&#x60; access can manage content in the &#x60;bucket_name&#x60;, while &#x60;read_only&#x60; can be used to view content. See [Create an Object Storage key]((ref:post-object-storage-keys) for more details. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageKeysRequestBucketAccessInner.new(
  region: us-iad,
  bucket_name: example-bucket,
  permissions: read_write
)
```

