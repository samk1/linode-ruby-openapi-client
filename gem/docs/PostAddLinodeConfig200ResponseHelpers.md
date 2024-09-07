# LinodeOpenapiClient::PostAddLinodeConfig200ResponseHelpers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **modules_dep** | **Boolean** | Creates a modules dependency file for the Kernel you run. | [optional] |
| **distro** | **Boolean** | Helps maintain correct inittab/upstart console device. | [optional] |
| **network** | **Boolean** | Automatically configures static networking. | [optional] |
| **devtmpfs_automount** | **Boolean** | Populates the /dev directory early during boot without udev.  Defaults to false. | [optional] |
| **updatedb_disabled** | **Boolean** | Disables updatedb cron job to avoid disk thrashing. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddLinodeConfig200ResponseHelpers.new(
  modules_dep: true,
  distro: true,
  network: true,
  devtmpfs_automount: false,
  updatedb_disabled: true
)
```

