# LinodeOpenapiClient::GetObjectStorageKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_key** | **String** | __Read-only__ This Object Storage key&#39;s secret key. Used as a password to validate this key when making requests to the S3 API. This value is only revealed in a response after creating or modifying a key. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This Object Storage key&#39;s unique ID. | [optional][readonly] |
| **access_key** | **String** | __Read-only__ A unique string chosen by the API to identify this key. Used as a user name to identify this key when making requests to the S3 API. | [optional][readonly] |
| **limited** | **Boolean** | __Read-only__ Whether this Object Storage key limits access to specific buckets and permissions. Returns &#x60;false&#x60; if this key grants full access. Specific limitations are set in &#x60;bucket_access&#x60;. | [optional][readonly] |
| **bucket_access** | [**Array&lt;GetObjectStorageKey200ResponseBucketAccessInner&gt;**](GetObjectStorageKey200ResponseBucketAccessInner.md) | Settings that limit access to specific buckets, each with a specific permission level. | [optional] |
| **regions** | [**Array&lt;GetObjectStorageKey200ResponseRegionsInner&gt;**](GetObjectStorageKey200ResponseRegionsInner.md) | The key can be used in these regions to create new buckets but it can&#39;t be used to manage content in those buckets. See [Create an Object Storage key](https://techdocs.akamai.com/linode-api/reference/post-object-storage-keys) for more details. | [optional] |
| **label** | **String** | The label given to this key. For display purposes only. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageKey200Response.new(
  secret_key: null,
  id: 123,
  access_key: KVAKUTGBA4WTR2NSJQ81,
  limited: true,
  bucket_access: null,
  regions: null,
  label: my-key
)
```

