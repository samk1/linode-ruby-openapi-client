# LinodeOpenapiClient::PostImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_id** | **Integer** | The ID of the Linode Disk that this image will be created from. |  |
| **cloud_init** | **Boolean** | Whether this image supports [cloud-init](https://www.linode.com/docs/guides/write-files-with-cloud-init/). | [optional] |
| **label** | **String** | A short title of this image. Defaults to the label of the Disk it is being created from if not provided. | [optional] |
| **description** | **String** | A detailed description of this image. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags used for organizational purposes. A tag can be from 3 to 100 characters long, and an image can have a maximum of 500 total tags. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostImageRequest.new(
  disk_id: 42,
  cloud_init: true,
  label: null,
  description: null,
  tags: [&quot;repair-image&quot;,&quot;fix-1&quot;]
)
```

