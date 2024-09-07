# LinodeOpenapiClient::PostUploadImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The region to upload to. Once uploaded, the image can be used in any region. |  |
| **cloud_init** | **Boolean** | Whether the uploaded Image supports cloud-init. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags you can use to organize images. A tag can be from 3 to 100 characters long, and an image can have a maximum of 500 total tags. | [optional] |
| **description** | **String** | Description for the uploaded image. | [optional] |
| **label** | **String** | Label for the uploaded image. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostUploadImageRequest.new(
  region: eu-central,
  cloud_init: true,
  tags: [&quot;repair-image&quot;,&quot;fix-1&quot;],
  description: This is an example image in the docs.,
  label: my-image-label
)
```

