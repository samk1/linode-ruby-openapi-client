# LinodeOpenapiClient::PostVolumeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **Integer** | When creating a Volume attached to a Linode, the ID of the Linode Config to include the new Volume in. This Config must belong to the Linode referenced by &#x60;linode_id&#x60;. Must _not_ be provided if &#x60;linode_id&#x60; is not sent. If a &#x60;linode_id&#x60; is sent without a &#x60;config_id&#x60;, the volume will be attached:    - to the Linode&#39;s only config if it only has one config.   - to the Linode&#39;s last used config, if possible.  If no config can be selected for attachment, an error will be returned. | [optional] |
| **linode_id** | **Integer** | The Linode this volume should be attached to upon creation. If not given, the volume will be created without an attachment. | [optional] |
| **region** | **String** | The Region to deploy this Volume in. This is only required if a linode_id is not given. | [optional] |
| **size** | **Integer** | The initial size of this volume, in GB.  Be aware that volumes may only be resized up after creation. | [optional][default to 20] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **label** | **String** | The Volume&#39;s label, which is also used in the &#x60;filesystem_path&#x60; of the resulting volume. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostVolumeRequest.new(
  config_id: 23456,
  linode_id: 123,
  region: null,
  size: 20,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  label: my-volume
)
```

