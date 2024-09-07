# LinodeOpenapiClient::GetObjectStorageBucketContent200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;GetObjectStorageBucketContent200ResponseDataInner&gt;**](GetObjectStorageBucketContent200ResponseDataInner.md) |  | [optional] |
| **is_truncated** | **Boolean** | Designates if there is another page of bucket objects. | [optional] |
| **next_marker** | **String** | Returns the value you should pass to the &#x60;marker&#x60; query parameter to get the next page of objects. If there is no next page, &#x60;null&#x60; will be returned. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageBucketContent200Response.new(
  data: null,
  is_truncated: true,
  next_marker: bd021c21-e734-4823-97a4-58b41c2cd4c8.892602.184
)
```

