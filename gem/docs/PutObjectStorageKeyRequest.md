# LinodeOpenapiClient::PutObjectStorageKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regions** | **Array&lt;String&gt;** | Replace the current list of &#x60;regions&#x60; set in a specific key. Include an existing region to maintain it or leave it out to remove it. If you include new &#x60;regions&#x60; in the key, they can&#39;t be used to manage content in buckets in that specific region. You can grant these keys this access using [bucket policies](https://www.linode.com/docs/products/storage/object-storage/guides/bucket-policies/). Omit this to leave the existing list unchanged.  &gt; 🚧 &gt; &gt; You can&#39;t remove a &#x60;region&#x60; from a limited key&#39;s original &#x60;bucket_access&#x60; list. If you include the &#x60;regions&#x60; array in this operation, you need to include all existing &#x60;region&#x60; entries from the &#x60;bucket_access&#x60; array. Otherwise, the operation fails with an error. Run [Get an Object Storage key](https://techdocs.akamai.com/linode-api/reference/get-object-storage-key) to review current &#x60;region&#x60; entries in a limited key. | [optional] |
| **label** | **String** | The label for the Object Storage key. Used for display purposes. Omit this to leave the &#x60;label&#x60; unchanged. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutObjectStorageKeyRequest.new(
  regions: [&quot;us-iad&quot;,&quot;fr-par&quot;],
  label: my-key
)
```

