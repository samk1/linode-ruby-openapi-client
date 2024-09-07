# LinodeOpenapiClient::PostAddLinodeConfigRequestAllOfHelpers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **Boolean** | Automatically configures static networking. | [optional] |
| **devtmpfs_automount** | **Boolean** | Populates the /dev directory early during boot without udev.  Defaults to false. | [optional] |
| **distro** | **Boolean** | Helps maintain correct inittab/upstart console device. | [optional] |
| **modules_dep** | **Boolean** | Creates a modules dependency file for the Kernel you run. | [optional] |
| **updatedb_disabled** | **Boolean** | Disables updatedb cron job to avoid disk thrashing. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddLinodeConfigRequestAllOfHelpers.new(
  network: true,
  devtmpfs_automount: false,
  distro: true,
  modules_dep: true,
  updatedb_disabled: true
)
```

