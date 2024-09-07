# LinodeOpenapiClient::GetLinodeConfigs200ResponseDataInnerHelpers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updatedb_disabled** | **Boolean** | Disables updatedb cron job to avoid disk thrashing. | [optional] |
| **distro** | **Boolean** | Helps maintain correct inittab/upstart console device. | [optional] |
| **modules_dep** | **Boolean** | Creates a modules dependency file for the Kernel you run. | [optional] |
| **devtmpfs_automount** | **Boolean** | Populates the /dev directory early during boot without udev.  Defaults to false. | [optional] |
| **network** | **Boolean** | Automatically configures static networking. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLinodeConfigs200ResponseDataInnerHelpers.new(
  updatedb_disabled: true,
  distro: true,
  modules_dep: true,
  devtmpfs_automount: false,
  network: true
)
```

