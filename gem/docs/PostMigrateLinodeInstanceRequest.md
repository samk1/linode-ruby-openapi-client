# LinodeOpenapiClient::PostMigrateLinodeInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | The region to which the Linode will be migrated. Must be a valid region slug. A list of regions can be viewed by running the [List regions](https://techdocs.akamai.com/linode-api/reference/get-regions) operation. A cross data center migration will cancel a pending migration that has not yet been initiated. A cross data center migration will initiate a &#x60;linode_migrate_datacenter_create&#x60; event. | [optional] |
| **placement_group** | [**PostMigrateLinodeInstanceRequestPlacementGroup**](PostMigrateLinodeInstanceRequestPlacementGroup.md) |  | [optional] |
| **type** | **String** | Type of migration used in moving to a new host or Linode type.  &#x60;warm&#x60;: the Linode will not power down until the migration is complete. Warm migrations are not available for DC migrations.  &#x60;cold&#x60;: the Linode will be powered down and migrated. When the migration is complete, the Linode will be powered on. | [optional][default to &#39;cold&#39;] |
| **upgrade** | **Boolean** | When initiating a cross DC migration, setting this value to true will also ensure that the Linode is upgraded to the latest generation of hardware that corresponds to your Linode&#39;s Type, if any free upgrades are available for it. If no free upgrades are available, and this value is set to true, then the endpoint will return a 400 error code and the migration will not be performed. If the data center set in the &#x60;region&#x60; field does not allow upgrades, then the endpoint will return a 400 error code and the migration will not be performed. | [optional][default to false] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostMigrateLinodeInstanceRequest.new(
  region: us-east,
  placement_group: null,
  type: warm,
  upgrade: false
)
```

