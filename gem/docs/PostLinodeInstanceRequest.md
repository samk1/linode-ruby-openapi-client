# LinodeOpenapiClient::PostLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**PostLinodeInstanceRequestAllOfMetadata**](PostLinodeInstanceRequestAllOfMetadata.md) |  | [optional] |
| **stackscript_data** | **Object** | This field is required only if the StackScript being deployed requires input data from the User for successful completion. See [User Defined Fields (UDFs)](https://www.linode.com/docs/products/tools/stackscripts/guides/write-a-custom-script/#declare-user-defined-fields-udfs) for more details.  This field is required to be valid JSON.  Total length cannot exceed 65,535 characters. | [optional] |
| **booted** | **Boolean** | __Write-only__ This field defaults to &#x60;true&#x60; if the Linode is created with an Image or from a Backup. If it is deployed from an Image or a Backup and you wish it to remain &#x60;offline&#x60; after deployment, set this to &#x60;false&#x60;. | [optional][default to true] |
| **root_pass** | **String** | __Write-only__ This sets the root user&#39;s password on a newly-created Linode Disk when deploying from an Image.  - __Required__ when creating a Linode Disk from an Image, including when using a StackScript.  - Must meet a password strength score requirement that is calculated internally by the API. If the strength requirement is not met, you will receive a &#x60;Password does not meet strength requirement&#x60; error. | [optional] |
| **authorized_users** | **Array&lt;String&gt;** | __Write-only__ A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root users &#x60;~/.ssh/authorized_keys&#x60; file automatically when deploying from an Image. | [optional] |
| **authorized_keys** | **Array&lt;String&gt;** | __Write-only__ A list of public SSH keys that will be automatically appended to the root user&#39;s &#x60;~/.ssh/authorized_keys&#x60; file when deploying from an Image. | [optional] |
| **image** | **String** | An Image ID to deploy the Linode Disk from.  Run the [List images](https://techdocs.akamai.com/linode-api/reference/get-images) operation with authentication to view all available Images. Official Linode Images start with &#x60;linode/&#x60;, while your Account&#39;s Images start with &#x60;private/&#x60;. Creating a disk from a Private Image requires &#x60;read_only&#x60; or &#x60;read_write&#x60; permissions for that Image. Run the [Update a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/put-user-grants) operation to adjust permissions for an Account Image. | [optional] |
| **stackscript_id** | **Integer** | A StackScript ID that will cause the referenced StackScript to be run during deployment of this Linode. A compatible &#x60;image&#x60; is required to use a StackScript. To get a list of available StackScript and their permitted Images, run [List StackScripts](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts). This field cannot be used when deploying from a Backup or a Private Image. | [optional] |
| **label** | **String** | __Filterable__ The Linode&#39;s label is for display purposes only. If no label is provided for a Linode, a default will be assigned.  Linode labels have the following constraints:  - Must begin and end with an alphanumeric character. - May only consist of alphanumeric characters, hyphens (&#x60;-&#x60;), underscores (&#x60;_&#x60;) or periods (&#x60;.&#x60;). - Cannot have two hyphens (&#x60;--&#x60;), underscores (&#x60;__&#x60;) or periods (&#x60;..&#x60;) in a row. | [optional] |
| **backups_enabled** | **Boolean** | If this field is set to &#x60;true&#x60;, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.  This option is always treated as &#x60;true&#x60; if the account-wide &#x60;backups_enabled&#x60; setting is &#x60;true&#x60;.  See [Get account settings](https://techdocs.akamai.com/linode-api/reference/get-account-settings) for more information.  Backup pricing is included in the response from [List types](https://techdocs.akamai.com/linode-api/reference/get-linode-types) | [optional] |
| **type** | **String** | The [Linode type](https://techdocs.akamai.com/linode-api/reference/get-linode-types) of the Linode you are creating. |  |
| **placement_group** | [**PostLinodeInstanceRequestAllOfPlacementGroup**](PostLinodeInstanceRequestAllOfPlacementGroup.md) |  | [optional] |
| **swap_size** | **Integer** | When deploying from an Image, this field is optional, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode. | [optional][default to 512] |
| **firewall_id** | **Integer** | The &#x60;id&#x60; of the Firewall to attach this Linode to upon creation. | [optional] |
| **backup_id** | **Integer** | A Backup ID from another Linode&#39;s available backups. Your User must have &#x60;read_write&#x60; access to that Linode, the Backup must have a &#x60;status&#x60; of &#x60;successful&#x60;, and the Linode must be deployed to the same &#x60;region&#x60; as the Backup. Run [List backups](https://techdocs.akamai.com/linode-api/reference/get-backups) for a Linode&#39;s available backups.  This field and the &#x60;image&#x60; field are mutually exclusive. | [optional] |
| **group** | **String** | __Filterable__ A deprecated property denoting a group label for this Linode. | [optional] |
| **tags** | **Array&lt;String&gt;** | __Filterable__ An array of tags applied to this object.  Tags are for organizational purposes only. | [optional] |
| **interfaces** | [**Array&lt;PostLinodeInstanceRequestAllOfInterfacesInner&gt;**](PostLinodeInstanceRequestAllOfInterfacesInner.md) | An array of Network Interfaces to add to this Linode&#39;s Configuration Profile. At least one and up to three Interface objects can exist in this array. The position in the array determines which of the Linode&#39;s network Interfaces is configured:  - First [0]:  eth0 - Second [1]: eth1 - Third [2]:  eth2  When updating a Linode&#39;s Interfaces, _each Interface must be redefined_. An empty &#x60;interfaces&#x60; array results in a default &#x60;public&#x60; type Interface configuration only.  If no public Interface is configured, public IP addresses are still assigned to the Linode but will not be usable without manual configuration.  __Note__. Changes to Linode Interface configurations can be enabled by rebooting the Linode.  &#x60;vpc&#x60; details  See the [VPC documentation](https://www.linode.com/docs/products/networking/vpc/#technical-specifications) guide for its specifications and limitations.  &#x60;vlan&#x60; details  - Only Next Generation Network (NGN) data centers support VLANs. Run the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation to view the capabilities of data center regions. If a VLAN is attached to your Linode and you attempt to migrate or clone it to a non-NGN data center, the migration or cloning will not initiate. If a Linode cannot be migrated or cloned because of an incompatibility, you will be prompted to select a different data center or contact support. - See the [VLANs Overview](https://www.linode.com/docs/products/networking/vlans/#technical-specifications) guide to view additional specifications and limitations. | [optional] |
| **region** | **String** | The [region](https://techdocs.akamai.com/linode-api/reference/get-regions) where the Linode will be located. |  |
| **private_ip** | **Boolean** | If true, the created Linode will have private networking enabled and assigned a private IPv4 address. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostLinodeInstanceRequest.new(
  metadata: null,
  stackscript_data: {&quot;gh_username&quot;:&quot;linode&quot;},
  booted: null,
  root_pass: aComplexP@ssword,
  authorized_users: [&quot;myUser&quot;,&quot;secondaryUser&quot;],
  authorized_keys: [&quot;ssh-rsa AAAA_valid_public_ssh_key_123456785&#x3D;&#x3D; user@their-computer&quot;],
  image: linode/debian9,
  stackscript_id: 10079,
  label: linode123,
  backups_enabled: null,
  type: g6-standard-2,
  placement_group: null,
  swap_size: 512,
  firewall_id: null,
  backup_id: 1234,
  group: Linode-Group,
  tags: [&quot;example tag&quot;,&quot;another example&quot;],
  interfaces: [{&quot;ipv4&quot;:null,&quot;id&quot;:101,&quot;vpc_id&quot;:null,&quot;purpose&quot;:&quot;public&quot;,&quot;ipam_address&quot;:null,&quot;primary&quot;:false,&quot;label&quot;:null,&quot;subnet_id&quot;:null},{&quot;ipv4&quot;:{&quot;nat_1_1&quot;:null,&quot;vpc&quot;:&quot;10.0.0.2&quot;},&quot;id&quot;:102,&quot;vpc_id&quot;:null,&quot;purpose&quot;:&quot;vlan&quot;,&quot;ipam_address&quot;:&quot;10.0.0.1/24&quot;,&quot;label&quot;:&quot;vlan-1&quot;,&quot;primary&quot;:false,&quot;subnet_id&quot;:null},{&quot;ipv4&quot;:{&quot;vpc&quot;:&quot;10.0.1.2&quot;,&quot;nat_1_1&quot;:&quot;203.0.113.2&quot;},&quot;id&quot;:103,&quot;vpc_id&quot;:111,&quot;purpose&quot;:&quot;vpc&quot;,&quot;label&quot;:null,&quot;ipam_address&quot;:null,&quot;primary&quot;:true,&quot;subnet_id&quot;:101}],
  region: us-east,
  private_ip: true
)
```

