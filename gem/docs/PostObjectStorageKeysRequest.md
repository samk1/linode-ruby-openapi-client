# LinodeOpenapiClient::PostObjectStorageKeysRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regions** | **Array&lt;String&gt;** | You can use a key to create new buckets in regions set in this array. But it can&#39;t be used to manage content in those buckets. See [Create an Object Storage key](https://techdocs.akamai.com/linode-api/reference/post-object-storage-keys) for more details. | [optional] |
| **bucket_access** | [**Array&lt;PostObjectStorageKeysRequestBucketAccessInner&gt;**](PostObjectStorageKeysRequestBucketAccessInner.md) | Set up the key to limit access to specific buckets, each with a specific permission level. You can create a limited Object Storage key with access to no buckets. Include an empty &#x60;bucket_access&#x60; array in the request. | [optional] |
| **label** | **String** | The label for the Object Storage key, for display purposes only. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageKeysRequest.new(
  regions: [&quot;us-iad&quot;],
  bucket_access: null,
  label: my-key
)
```

