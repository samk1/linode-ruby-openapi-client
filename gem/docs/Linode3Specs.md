# LinodeOpenapiClient::Linode3Specs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer** | **Integer** | __Read-only__ The amount of network transfer this Linode is allotted each month. | [optional][readonly] |
| **disk** | **Integer** | __Read-only__ The amount of storage space, in MB, this Linode has access to. A typical Linode will divide this space between a primary disk with an &#x60;image&#x60; deployed to it, and a swap disk, usually 512 MB. This is the default configuration created when deploying a Linode with an &#x60;image&#x60; through [Create a Linode](https://techdocs.akamai.com/linode-api/reference/post-linode-instance). While this configuration is suitable for 99% of use cases, if you need finer control over your Linode&#39;s disks, see the [List disks](https://techdocs.akamai.com/linode-api/reference/get-linode-disks) operations. | [optional][readonly] |
| **gpus** | **Integer** | __Read-only__ The number of gpus this Linode has access to. | [optional][readonly] |
| **vcpus** | **Integer** | __Read-only__ The number of vcpus this Linode has access to. | [optional][readonly] |
| **memory** | **Integer** | __Read-only__ The amount of RAM, in MB, this Linode has access to.  Typically, a Linode boots with all of its available RAM, but this can be configured in a Config profile. See the [List config profiles](https://techdocs.akamai.com/linode-api/reference/get-linode-configs) operations and the LinodeConfig object for more information. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::Linode3Specs.new(
  transfer: 4000,
  disk: 81920,
  gpus: 0,
  vcpus: 2,
  memory: 4096
)
```

