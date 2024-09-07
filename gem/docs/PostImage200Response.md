# LinodeOpenapiClient::PostImage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_size** | **Integer** | __Read-only__ The total size in bytes of all instances of this image, in all &#x60;regions&#x60;.  &gt; 📘 &gt; &gt; This object is empty for existing images. It&#39;s intended for use with future functionality. | [optional][readonly] |
| **id** | **String** | __Read-only__ The unique identifier for each image. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ Tags used for organizational purposes. A tag can be from 3 to 100 characters long, and an image can have a maximum of 500 total tags. | [optional] |
| **deprecated** | **Boolean** | __Filterable__, __Read-only__ Whether this image is deprecated. Only public images can be deprecated. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this image was created. | [optional][readonly] |
| **created_by** | **String** | __Read-only__ The name of the user who created this image, or &#x60;linode&#x60; for public images. | [optional][readonly] |
| **is_public** | **Boolean** | __Filterable__, __Read-only__ Revealed as &#x60;true&#x60; if the image is a public distribution image. Private, account-specific images are listed as &#x60;false&#x60;. | [optional][readonly] |
| **size** | **Integer** | __Filterable__, __Read-only__ The minimum size in MB this image needs to deploy. | [optional][readonly] |
| **capabilities** | **Array&lt;String&gt;** | __Read-only__ A list of the possible capabilities of this image.  - &#x60;cloud-init&#x60;. The image supports the cloud-init multi-distribution method with our [Metadata service](https://www.linode.com/docs/products/compute/compute-instances/guides/metadata/#troubleshoot-metadata-and-cloud-init). This only applies to public images.  - &#x60;distributed-sites&#x60;. Whether the image can be used in distributed compute regions. Compared to a core compute region, distributed compute regions offer limited functionality, but they&#39;re globally distributed. Your image can be geographically closer to you, potentially letting you deploy it quicker. | [optional][readonly] |
| **status** | **String** | __Filterable__, __Read-only__ The current status of the image. Possible values are &#x60;available&#x60;, &#x60;creating&#x60;, and &#x60;pending_upload&#x60;.  &gt; 📘 &gt; &gt; The &#x60;+order_by&#x60; and &#x60;+order&#x60; operators are not available when [filtering](https://techdocs.akamai.com/linode-api/reference/filtering-and-sorting) on this key. | [optional][readonly] |
| **expiry** | **Time** | __Read-only__ Only images created automatically from a deleted compute instance (type&#x3D;automatic) expire. This is &#x60;null&#x60; for private images. | [optional][readonly] |
| **type** | **String** | __Filterable__, __Read-only__ How the image was created. Create a &#x60;manual&#x60; image at any time. An &#x60;automatic&#x60; image is created automatically from a deleted compute instance. | [optional][readonly] |
| **description** | **String** | A detailed description of this image. | [optional] |
| **label** | **String** | __Filterable__ A short description of the image. | [optional] |
| **regions** | [**Array&lt;GetImages200ResponseDataInnerRegionsInner&gt;**](GetImages200ResponseDataInnerRegionsInner.md) | __Read-only__ Details on the regions where this image is stored.  &gt; 📘 &gt; &gt; This array is empty for existing images. It&#39;s intended for use with future functionality. | [optional][readonly] |
| **eol** | **Time** | __Read-only__ The date of the public image&#39;s planned removal from service. This is &#x60;null&#x60; for private images. | [optional][readonly] |
| **vendor** | **String** | __Filterable__, __Read-only__ The upstream distribution vendor. This is &#x60;null&#x60; for private images. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ When this image was last updated. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostImage200Response.new(
  total_size: 1234567,
  id: linode/debian11,
  tags: [&quot;repair-image&quot;,&quot;fix-1&quot;],
  deprecated: false,
  created: null,
  created_by: linode,
  is_public: true,
  size: 2500,
  capabilities: [&quot;cloud-init&quot;,&quot;distributed-sites&quot;],
  status: available,
  expiry: null,
  type: manual,
  description: Example image description.,
  label: Debian 11,
  regions: null,
  eol: null,
  vendor: Debian,
  updated: null
)
```

