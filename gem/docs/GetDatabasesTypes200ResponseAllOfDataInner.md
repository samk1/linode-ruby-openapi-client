# LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memory** | **Integer** | The amount of RAM allocated to Database created of this plan type. The value is represented in megabytes. | [optional] |
| **disk** | **Integer** | The amount of disk space set aside for Databases of this plan type. The value is represented in megabytes. | [optional] |
| **engines** | [**GetDatabasesTypes200ResponseAllOfDataInnerEngines**](GetDatabasesTypes200ResponseAllOfDataInnerEngines.md) |  | [optional] |
| **_class** | **String** | The compute class category. | [optional] |
| **label** | **String** | __Read-only__ A human-readable string that describes each plan type. For display purposes only. | [optional][readonly] |
| **deprecated** | **Boolean** | __Filterable__ Whether this Database plan type has been deprecated and is no longer available. | [optional] |
| **vcpus** | **Integer** | The integer of number CPUs allocated to databases of this plan type. | [optional] |
| **id** | **String** | __Read-only__ The ID representing the Managed Database node plan type. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesTypes200ResponseAllOfDataInner.new(
  memory: 1024,
  disk: 25600,
  engines: null,
  _class: nanode,
  label: DBaaS - Nanode 1GB,
  deprecated: false,
  vcpus: 1,
  id: g6-nanode-1
)
```

