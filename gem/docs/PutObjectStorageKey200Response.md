# LinodeOpenapiClient::PutObjectStorageKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_key** | **String** | __Read-only__ This Object Storage key&#39;s secret key. Used as a password to validate this key when making requests to the S3 API. This value is only revealed in a response after creating or modifying a key. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This Object Storage key&#39;s unique numeric identifier. | [optional][readonly] |
| **limited** | **Boolean** | __Read-only__ Whether this Object Storage key limits access to specific buckets and permissions. Returns &#x60;false&#x60; if this key grants full access.  &gt; 📘 &gt; &gt; The &#x60;bucket_access&#x60; array that contains limited Object Storage key settings doesn&#39;t appear in this response. Store this key&#39;s &#x60;id&#x60; from the response and run [Get an Object Storage key](https://techdocs.akamai.com/linode-api/reference/get-object-storage-key) to view these settings. | [optional][readonly] |
| **access_key** | **String** | __Read-only__ A unique string chosen by the API to identify this key. Used as a user name to identify this key when making requests to the S3 API. | [optional][readonly] |
| **label** | **String** | The label given to this key. For display purposes only. | [optional] |
| **regions** | [**Array&lt;PutObjectStorageKey200ResponseRegionsInner&gt;**](PutObjectStorageKey200ResponseRegionsInner.md) | The key can be used in these regions to create new buckets, but it can&#39;t be used to manage content in those buckets. See [Create an Object Storage key](https://techdocs.akamai.com/linode-api/reference/post-object-storage-keys) for more details. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutObjectStorageKey200Response.new(
  secret_key: OiA6F5r0niLs3QA2stbyq7mY5VCV7KqOzcmitmHw,
  id: 123,
  limited: true,
  access_key: KVAKUTGBA4WTR2NSJQ81,
  label: my-key,
  regions: null
)
```

