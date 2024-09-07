# LinodeOpenapiClient::PostObjectStorageObjectUrlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | The expected &#x60;Content-type&#x60; header of the request this signed URL will be valid for.  If provided, the &#x60;Content-type&#x60; header _must_ be sent with the request when this URL is used, and _must_ be the same as it was when the signed URL was created. Required for all methods _except_ &#x60;GET&#x60; or &#x60;DELETE&#x60;. | [optional] |
| **method** | **String** | The HTTP method allowed to be used with the pre-signed URL. | [default to &#39;GET&#39;] |
| **expires_in** | **Integer** | How long this signed URL will be valid for, in seconds.  If omitted, the URL will be valid for 3600 seconds (1 hour). | [optional][default to 3600] |
| **name** | **String** | The name of the object that will be accessed with the pre-signed URL. This object need not exist, and no error will be returned if it doesn&#39;t. This behavior is useful for generating pre-signed URLs to upload new objects to by setting the &#x60;method&#x60; to &#x60;PUT&#x60;. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostObjectStorageObjectUrlRequest.new(
  content_type: null,
  method: GET,
  expires_in: null,
  name: example
)
```

