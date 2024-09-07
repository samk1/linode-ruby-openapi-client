# LinodeOpenapiClient::GetDatabasesPostgreSqlInstances200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | __Filterable__, __Read-only__ The Managed Database engine version. | [optional][readonly] |
| **updated** | **Time** | __Read-only__ When this Managed Database was last updated. | [optional][readonly] |
| **replication_type** | **String** | The replication method used for the Managed Database.  Defaults to &#x60;none&#x60; for a single cluster and &#x60;asynch&#x60; for a high availability cluster.  Must be &#x60;none&#x60; for a single node cluster.  Must be &#x60;asynch&#x60; for a high availability cluster. | [optional] |
| **encrypted** | **Boolean** | Whether the Managed Databases is encrypted. | [optional][default to false] |
| **type** | **String** | __Filterable__ The Linode Instance type used by the Managed Database for its nodes. | [optional] |
| **label** | **String** | __Filterable__ A unique, user-defined string referring to the Managed Database. | [optional] |
| **replication_commit_type** | **String** | The synchronization level of the replicating server.  Must be &#x60;local&#x60; or &#x60;off&#x60; for the &#x60;asynch&#x60; replication type. | [optional][default to &#39;local&#39;] |
| **engine** | **String** | __Filterable__, __Read-only__ The Managed Database engine type. | [optional][readonly] |
| **updates** | [**GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerUpdates**](GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerUpdates.md) |  | [optional] |
| **port** | **Integer** | The access port for this Managed Database. | [optional] |
| **ssl_connection** | **Boolean** | Whether to require SSL credentials to establish a connection to the Managed Database.  Run the [Get managed PostgreSQL database credentials](https://techdocs.akamai.com/linode-api/reference/get-databases-postgre-sql-instance-credentials) operation for access information. | [optional][default to true] |
| **hosts** | [**GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerHosts**](GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerHosts.md) |  | [optional] |
| **status** | **String** | __Filterable__, __Read-only__ The operating status of the Managed Database. | [optional][readonly] |
| **total_disk_size_gb** | **Integer** | The total disk size of the database in GB. | [optional] |
| **cluster_size** | **Integer** | The number of Linode Instance nodes deployed to the Managed Database.  Choosing 3 nodes creates a high availability cluster consisting of 1 primary node and 2 replica nodes. | [optional][default to CLUSTER_SIZE::N1] |
| **allow_list** | **Array&lt;String&gt;** | A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.  By default, this is an empty array (&#x60;[]&#x60;), which blocks all connections (both public and private) to the Managed Database.  If &#x60;0.0.0.0/0&#x60; is a value in this list, then all IP addresses can access the Managed Database. | [optional] |
| **region** | **String** | __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the Managed Database. | [optional] |
| **created** | **Time** | __Read-only__ When this Managed Database was created. | [optional][readonly] |
| **used_disk_size_gb** | **Integer** | The used space of the database in GB. | [optional] |
| **id** | **Integer** | __Read-only__ A unique ID that can be used to identify and reference the Managed Database. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesPostgreSqlInstances200ResponseAllOfDataInner.new(
  version: 13.2,
  updated: null,
  replication_type: async,
  encrypted: false,
  type: g6-dedicated-2,
  label: example-db,
  replication_commit_type: local,
  engine: postgresql,
  updates: null,
  port: 3306,
  ssl_connection: true,
  hosts: null,
  status: active,
  total_disk_size_gb: 15,
  cluster_size: 3,
  allow_list: [&quot;203.0.113.1/32&quot;,&quot;192.0.1.0/24&quot;],
  region: us-east,
  created: null,
  used_disk_size_gb: 2,
  id: 123
)
```

