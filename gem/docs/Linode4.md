# LinodeOpenapiClient::Linode4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alerts** | [**Linode4Alerts**](Linode4Alerts.md) |  | [optional] |
| **host_uuid** | **String** | __Read-only__ The Linode&#39;s host machine, as a UUID. | [optional][readonly] |
| **backups** | [**Linode2Backups**](Linode2Backups.md) |  | [optional] |
| **status** | **String** | __Read-only__ A brief description of this Linode&#39;s current state. This field may change without direct action from you. For example, when a Linode goes into maintenance mode its status will display &#x60;stopped&#x60;. | [optional][readonly] |
| **group** | **String** | __Filterable__ A deprecated property denoting a group label for this Linode. | [optional] |
| **hypervisor** | **String** | __Read-only__ The virtualization software powering this Linode. | [optional][readonly] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **id** | **Integer** | __Filterable__, __Read-only__ This Linode&#39;s ID which must be provided for all operations impacting this Linode. | [optional][readonly] |
| **specs** | [**Linode2Specs**](Linode2Specs.md) |  | [optional] |
| **ipv6** | **String** | __Read-only__ This Linode&#39;s IPv6 SLAAC address. This address is specific to a Linode, and may not be shared. If the Linode has not been assigned an IPv6 address, the return value will be &#x60;null&#x60;. | [optional][readonly] |
| **region** | **String** | __Filterable__, __Read-only__ This is the [region](https://techdocs.akamai.com/linode-api/reference/get-regions) where the Linode was deployed. A Linode&#39;s region can only be changed by initiating a [cross data center migration](https://techdocs.akamai.com/linode-api/reference/post-migrate-linode-instance). | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this Linode was created. | [optional][readonly] |
| **ipv4** | **Array&lt;String&gt;** | __Filterable__, __Read-only__ This Linode&#39;s IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single private IPv4 address if needed. You may need to [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) to get additional IPv4 addresses.  IPv4 addresses may be reassigned between your Linodes, or shared with other Linodes. See the [networking](https://techdocs.akamai.com/linode-api/reference/post-firewalls) operations for details. | [optional][readonly] |
| **type** | **String** | __Read-only__ This is the [Linode type](https://techdocs.akamai.com/linode-api/reference/get-linode-types) that this Linode was deployed with. To change a Linode&#39;s Type, use [Resize a Linode](https://techdocs.akamai.com/linode-api/reference/post-resize-linode-instance). | [optional][readonly] |
| **label** | **String** | __Filterable__ The Linode&#39;s label is for display purposes only. If no label is provided for a Linode, a default will be assigned.  Linode labels have the following constraints:  - Must begin and end with an alphanumeric character. - May only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;) or periods (&#x60;.&#x60;). - Cannot have two hyphens (&#x60;--&#x60;), underscores (&#x60;__&#x60;) or periods (&#x60;..&#x60;) in a row. | [optional] |
| **updated** | **Time** | __Read-only__ When this Linode was last updated. | [optional][readonly] |
| **has_user_data** | **Boolean** | __Read-only__ Whether this compute instance was provisioned utilizing &#x60;user_data&#x60; provided via the Metadata service. See the [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance) description for more information on Metadata. | [optional][readonly] |
| **placement_group** | [**Linode4PlacementGroup**](Linode4PlacementGroup.md) |  | [optional] |
| **image** | **String** | An Image ID to deploy the Linode Disk from.  Run the [List images](https://techdocs.akamai.com/linode-api/reference/get-images) operation with authentication to view all available Images. Official Linode Images start with &#x60;linode/&#x60;, while your Account&#39;s Images start with &#x60;private/&#x60;. Creating a disk from a Private Image requires &#x60;read_only&#x60; or &#x60;read_write&#x60; permissions for that Image. Run the [Update a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/put-user-grants) operation to adjust permissions for an Account Image. | [optional] |
| **watchdog_enabled** | **Boolean** | The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Linode4.new(
  alerts: null,
  host_uuid: null,
  backups: null,
  status: running,
  group: Linode-Group,
  hypervisor: kvm,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  id: 123,
  specs: null,
  ipv6: c001:d00d::1337/128,
  region: us-east,
  created: null,
  ipv4: [&quot;203.0.113.1&quot;,&quot;192.0.2.1&quot;],
  type: g6-standard-1,
  label: linode123,
  updated: null,
  has_user_data: true,
  placement_group: null,
  image: linode/debian9,
  watchdog_enabled: true
)
```

