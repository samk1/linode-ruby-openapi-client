# LinodeOpenapiClient::PostAddLinodeDiskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorized_keys** | **Array&lt;String&gt;** | __Write-only__ A list of public SSH keys that will be automatically appended to the root user&#39;s &#x60;~/.ssh/authorized_keys&#x60; file when deploying from an Image. | [optional] |
| **size** | **Integer** | __Filterable__ The size of the Disk in MB.  Images require a minimum size. Run the [Get an image](https://techdocs.akamai.com/linode-api/reference/get-image) operation to view its size. |  |
| **stackscript_id** | **Integer** | A StackScript ID that will cause the referenced StackScript to be run during deployment of this Linode. A compatible &#x60;image&#x60; is required to use a StackScript. To get a list of available StackScript and their permitted Images, run [List StackScripts](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts). This field cannot be used when deploying from a Backup or a Private Image. | [optional] |
| **image** | **String** | An Image ID to deploy the Linode Disk from.  Run the [List images](https://techdocs.akamai.com/linode-api/reference/get-images) operation with authentication to view all available Images. Official Linode Images start with &#x60;linode/&#x60;, while your Account&#39;s Images start with &#x60;private/&#x60;. Creating a disk from a Private Image requires &#x60;read_only&#x60; or &#x60;read_write&#x60; permissions for that Image. Run the [Update a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/put-user-grants) operation to adjust permissions for an Account Image. | [optional] |
| **root_pass** | **String** | __Write-only__ This sets the root user&#39;s password on a newly-created Linode Disk when deploying from an Image.  - __Required__ when creating a Linode Disk from an Image, including when using a StackScript.  - Must meet a password strength score requirement that is calculated internally by the API. If the strength requirement is not met, you will receive a &#x60;Password does not meet strength requirement&#x60; error. | [optional] |
| **stackscript_data** | **Object** | This field is required only if the StackScript being deployed requires input data from the User for successful completion. See [User Defined Fields (UDFs)](https://www.linode.com/docs/products/tools/stackscripts/guides/write-a-custom-script/#declare-user-defined-fields-udfs) for more details.  This field is required to be valid JSON.  Total length cannot exceed 65,535 characters. | [optional] |
| **authorized_users** | **Array&lt;String&gt;** | __Write-only__ A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root users &#x60;~/.ssh/authorized_keys&#x60; file automatically when deploying from an Image. | [optional] |
| **filesystem** | **String** | The Disk filesystem can be one of:    - raw - No filesystem, just a raw binary stream.   - swap - Linux swap area.   - ext3 - The ext3 journaling filesystem for Linux.   - ext4 - The ext4 journaling filesystem for Linux.   - initrd - initrd (uncompressed initrd, ext2, max 32 MB). | [optional] |
| **label** | **String** | __Filterable__ The Disk&#39;s label is for display purposes only. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddLinodeDiskRequest.new(
  authorized_keys: [&quot;ssh-rsa AAAA_valid_public_ssh_key_123456785&#x3D;&#x3D; user@their-computer&quot;],
  size: 48640,
  stackscript_id: 10079,
  image: linode/debian9,
  root_pass: aComplexP@ssword,
  stackscript_data: {&quot;gh_username&quot;:&quot;linode&quot;},
  authorized_users: [&quot;myUser&quot;,&quot;secondaryUser&quot;],
  filesystem: ext4,
  label: Debian 9 Disk
)
```

