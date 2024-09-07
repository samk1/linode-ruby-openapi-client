# LinodeOpenapiClient::GetDatabasesType200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | __Read-only__ The ID representing the Managed Database node plan type. | [optional][readonly] |
| **deprecated** | **Boolean** | __Filterable__ Whether this Database plan type has been deprecated and is no longer available. | [optional] |
| **vcpus** | **Integer** | The integer of number CPUs allocated to databases of this plan type. | [optional] |
| **engines** | [**GetDatabasesType200ResponseEngines**](GetDatabasesType200ResponseEngines.md) |  | [optional] |
| **label** | **String** | __Read-only__ A human-readable string that describes each plan type. For display purposes only. | [optional][readonly] |
| **_class** | **String** | The compute class category. | [optional] |
| **memory** | **Integer** | The amount of RAM allocated to Database created of this plan type. The value is represented in megabytes. | [optional] |
| **disk** | **Integer** | The amount of disk space set aside for Databases of this plan type. The value is represented in megabytes. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesType200Response.new(
  id: g6-nanode-1,
  deprecated: false,
  vcpus: 1,
  engines: null,
  label: DBaaS - Nanode 1GB,
  _class: nanode,
  memory: 1024,
  disk: 25600
)
```

