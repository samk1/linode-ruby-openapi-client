# LinodeOpenapiClient::GetObjectStorageBucketContent200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified** | **Time** | The date and time this object was last modified. &#x60;null&#x60; if this object represents a prefix. | [optional] |
| **size** | **Integer** | The size of this object, in bytes. &#x60;null&#x60; if this object represents a prefix. | [optional] |
| **name** | **String** | The name of this object or prefix. | [optional] |
| **etag** | **String** | An MD-5 hash of the object. &#x60;null&#x60; if this object represents a prefix. | [optional] |
| **owner** | **String** | The owner of this object, as a UUID. &#x60;null&#x60; if this object represents a prefix. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageBucketContent200ResponseDataInner.new(
  last_modified: null,
  size: 123,
  name: example,
  etag: 9f254c71e28e033bf9e0e5262e3e72ab,
  owner: bfc70ab2-e3d4-42a4-ad55-83921822270c
)
```

