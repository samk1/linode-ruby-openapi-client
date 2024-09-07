# LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ A unique ID that can be used to identify and reference the Managed Database. | [optional][readonly] |
| **created** | **Time** | __Read-only__ When this Managed Database was created. | [optional][readonly] |
| **region** | **String** | __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the Managed Database. | [optional] |
| **allow_list** | **Array&lt;String&gt;** | A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.  By default, this is an empty array (&#x60;[]&#x60;), which blocks all connections (both public and private) to the Managed Database.  If &#x60;0.0.0.0/0&#x60; is a value in this list, then all IP addresses can access the Managed Database. | [optional] |
| **cluster_size** | **Integer** | The number of Linode Instance nodes deployed to the Managed Database.  Choosing 3 nodes creates a high availability cluster consisting of 1 primary node and 2 replica nodes. | [optional][default to CLUSTER_SIZE::N1] |
| **status** | **String** | __Filterable__, __Read-only__ The operating status of the Managed Database. | [optional][readonly] |
| **hosts** | [**GetDatabasesInstances200ResponseAllOfDataInnerHosts**](GetDatabasesInstances200ResponseAllOfDataInnerHosts.md) |  | [optional] |
| **updates** | [**GetDatabasesInstances200ResponseAllOfDataInnerUpdates**](GetDatabasesInstances200ResponseAllOfDataInnerUpdates.md) |  | [optional] |
| **engine** | **String** | __Filterable__, __Read-only__ The Managed Database engine type. | [optional][readonly] |
| **label** | **String** | __Filterable__ A unique, user-defined string referring to the Managed Database. | [optional] |
| **type** | **String** | __Filterable__ The Linode Instance type used by the Managed Database for its nodes. | [optional] |
| **instance_uri** | **String** | __Read-only__ Append this to &#x60;https://api.linode.com&#x60; to run commands for the Managed Database. | [optional][readonly] |
| **encrypted** | **Boolean** | Whether the Managed Databases is encrypted. | [optional][default to false] |
| **updated** | **Time** | __Read-only__ When this Managed Database was last updated. | [optional][readonly] |
| **version** | **String** | __Filterable__, __Read-only__ The Managed Database engine version. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInner.new(
  id: 123,
  created: null,
  region: us-east,
  allow_list: [&quot;203.0.113.1/32&quot;,&quot;192.0.1.0/24&quot;],
  cluster_size: 3,
  status: active,
  hosts: null,
  updates: null,
  engine: mysql,
  label: example-db,
  type: g6-dedicated-2,
  instance_uri: /v4/databases/mysql/instances/123,
  encrypted: false,
  updated: null,
  version: 8.0.26
)
```

