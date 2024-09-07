# LinodeOpenapiClient::PostCloneLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **placement_group** | [**PostCloneLinodeInstanceRequestPlacementGroup**](PostCloneLinodeInstanceRequestPlacementGroup.md) |  | [optional] |
| **configs** | **Array&lt;Integer&gt;** | An array of configuration profile IDs.  - If the &#x60;configs&#x60; parameter __is not provided__, then __all configuration profiles and their associated disks will be cloned__ from the source Linode. Any disks specified by the &#x60;disks&#x60; parameter will also be cloned. - __If an empty array is provided__ for the &#x60;configs&#x60; parameter, then __no configuration profiles (nor their associated disks) will be cloned__ from the source Linode. Any disks specified by the &#x60;disks&#x60; parameter will still be cloned. - __If a non-empty array is provided__ for the &#x60;configs&#x60; parameter, then __the configuration profiles specified in the array (and their associated disks) will be cloned__ from the source Linode. Any disks specified by the &#x60;disks&#x60; parameter will also be cloned. | [optional] |
| **region** | **String** | This is the Region where the Linode will be deployed. To view all available Regions you can deploy to, run [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions).  - Region can only be provided and is required when cloning to a new Linode. | [optional] |
| **private_ip** | **Boolean** | If true, the created Linode will have private networking enabled and assigned a private IPv4 address.  - Can only be provided when cloning to a new Linode. | [optional] |
| **label** | **String** | The label to assign this Linode when cloning to a new Linode.  - Can only be provided when cloning to a new Linode. - Defaults to &#x60;linode&#x60;. | [optional] |
| **backups_enabled** | **Boolean** | If this field is set to &#x60;true&#x60;, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. Pricing is included in the response from [List types](https://techdocs.akamai.com/linode-api/reference/get-linode-types).  - Can only be included when cloning to a new Linode. | [optional] |
| **type** | **String** | A Linode&#39;s Type determines what resources are available to it, including disk space, memory, and virtual cpus. The amounts available to a specific Linode are returned as &#x60;specs&#x60; on the Linode object.  To view all available Linode Types you can deploy with, run [List types](https://techdocs.akamai.com/linode-api/reference/get-linode-types).  - Type can only be provided and is required when cloning to a new Linode. | [optional] |
| **linode_id** | **Integer** | If an existing Linode is the target for the clone, the ID of that Linode. The existing Linode must have enough resources to accept the clone. | [optional] |
| **group** | **String** | A label used to group Linodes for display. Linodes are not required to have a group. | [optional] |
| **disks** | **Array&lt;Integer&gt;** | An array of disk IDs.  - If the &#x60;disks&#x60; parameter __is not provided__, then __no extra disks will be cloned__ from the source Linode. All disks associated with the configuration profiles specified by the &#x60;configs&#x60; parameter will still be cloned. - __If an empty array is provided__ for the &#x60;disks&#x60; parameter, then __no extra disks will be cloned__ from the source Linode. All disks associated with the configuration profiles specified by the &#x60;configs&#x60; parameter will still be cloned. - __If a non-empty array is provided__ for the &#x60;disks&#x60; parameter, then __the disks specified in the array will be cloned__ from the source Linode, in addition to any disks associated with the configuration profiles specified by the &#x60;configs&#x60; parameter. | [optional] |
| **metadata** | [**PostLinodeInstanceRequestAllOfMetadata**](PostLinodeInstanceRequestAllOfMetadata.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostCloneLinodeInstanceRequest.new(
  placement_group: null,
  configs: null,
  region: us-east,
  private_ip: true,
  label: cloned-linode,
  backups_enabled: true,
  type: g6-standard-2,
  linode_id: 124,
  group: Linode-Group,
  disks: null,
  metadata: null
)
```

