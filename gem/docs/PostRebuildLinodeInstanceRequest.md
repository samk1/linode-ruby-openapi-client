# LinodeOpenapiClient::PostRebuildLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorized_users** | **Array&lt;String&gt;** | __Write-only__ A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root users &#x60;~/.ssh/authorized_keys&#x60; file automatically when deploying from an Image. | [optional] |
| **root_pass** | **String** | __Write-only__ This sets the root user&#39;s password on a newly-created Linode Disk when deploying from an Image.  - __Required__ when creating a Linode Disk from an Image, including when using a StackScript.  - Must meet a password strength score requirement that is calculated internally by the API. If the strength requirement is not met, you will receive a &#x60;Password does not meet strength requirement&#x60; error. |  |
| **booted** | **Boolean** | __Write-only__ This field defaults to &#x60;true&#x60; if the Linode is created with an Image or from a Backup. If it is deployed from an Image or a Backup and you wish it to remain &#x60;offline&#x60; after deployment, set this to &#x60;false&#x60;. | [optional][default to true] |
| **stackscript_data** | **Object** | This field is required only if the StackScript being deployed requires input data from the User for successful completion. See [User Defined Fields (UDFs)](https://www.linode.com/docs/products/tools/stackscripts/guides/write-a-custom-script/#declare-user-defined-fields-udfs) for more details.  This field is required to be valid JSON.  Total length cannot exceed 65,535 characters. | [optional] |
| **metadata** | [**PostLinodeInstanceRequestAllOfMetadata**](PostLinodeInstanceRequestAllOfMetadata.md) |  | [optional] |
| **stackscript_id** | **Integer** | A StackScript ID that will cause the referenced StackScript to be run during deployment of this Linode. A compatible &#x60;image&#x60; is required to use a StackScript. To get a list of available StackScript and their permitted Images, run [List StackScripts](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts). This field cannot be used when deploying from a Backup or a Private Image. | [optional] |
| **image** | **String** | An Image ID to deploy the Linode Disk from.  Run the [List images](https://techdocs.akamai.com/linode-api/reference/get-images) operation with authentication to view all available Images. Official Linode Images start with &#x60;linode/&#x60;, while your Account&#39;s Images start with &#x60;private/&#x60;. Creating a disk from a Private Image requires &#x60;read_only&#x60; or &#x60;read_write&#x60; permissions for that Image. Run the [Update a user&#39;s grants](https://techdocs.akamai.com/linode-api/reference/put-user-grants) operation to adjust permissions for an Account Image. |  |
| **authorized_keys** | **Array&lt;String&gt;** | __Write-only__ A list of public SSH keys that will be automatically appended to the root user&#39;s &#x60;~/.ssh/authorized_keys&#x60; file when deploying from an Image. | [optional] |
| **type** | **String** | The ID of the [Linode type](https://techdocs.akamai.com/linode-api/reference/get-linode-types) to resize to with this request. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostRebuildLinodeInstanceRequest.new(
  authorized_users: [&quot;myUser&quot;,&quot;secondaryUser&quot;],
  root_pass: aComplexP@ssword,
  booted: null,
  stackscript_data: {&quot;gh_username&quot;:&quot;linode&quot;},
  metadata: null,
  stackscript_id: 10079,
  image: linode/debian9,
  authorized_keys: [&quot;ssh-rsa AAAA_valid_public_ssh_key_123456785&#x3D;&#x3D; user@their-computer&quot;],
  type: g6-standard-2
)
```

