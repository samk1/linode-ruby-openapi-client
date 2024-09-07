# LinodeOpenapiClient::PutLinodeConfig200ResponseHelpers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **Boolean** | Automatically configures static networking. | [optional] |
| **devtmpfs_automount** | **Boolean** | Populates the /dev directory early during boot without udev.  Defaults to false. | [optional] |
| **modules_dep** | **Boolean** | Creates a modules dependency file for the Kernel you run. | [optional] |
| **distro** | **Boolean** | Helps maintain correct inittab/upstart console device. | [optional] |
| **updatedb_disabled** | **Boolean** | Disables updatedb cron job to avoid disk thrashing. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLinodeConfig200ResponseHelpers.new(
  network: true,
  devtmpfs_automount: false,
  modules_dep: true,
  distro: true,
  updatedb_disabled: true
)
```

