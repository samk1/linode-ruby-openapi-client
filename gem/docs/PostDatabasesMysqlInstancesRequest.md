# LinodeOpenapiClient::PostDatabasesMysqlInstancesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | __Filterable__ The Linode Instance type used by the Managed Database for its nodes. |  |
| **label** | **String** | __Filterable__ A unique, user-defined string referring to the Managed Database. |  |
| **allow_list** | **Array&lt;String&gt;** | A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.  By default, this is an empty array (&#x60;[]&#x60;), which blocks all connections (both public and private) to the Managed Database.  If &#x60;0.0.0.0/0&#x60; is a value in this list, then all IP addresses can access the Managed Database. | [optional] |
| **encrypted** | **Boolean** | Whether the Managed Databases is encrypted. | [optional][default to false] |
| **cluster_size** | **Integer** | The number of Linode Instance nodes deployed to the Managed Database.  Choosing 3 nodes creates a high availability cluster consisting of 1 primary node and 2 replica nodes. | [optional][default to CLUSTER_SIZE::N1] |
| **replication_type** | **String** | The replication method used for the Managed Database.  Defaults to &#x60;none&#x60; for a single cluster and &#x60;semi_synch&#x60; for a high availability cluster.  Must be &#x60;none&#x60; for a single node cluster.  Must be &#x60;asynch&#x60; or &#x60;semi_synch&#x60; for a high availability cluster. | [optional] |
| **ssl_connection** | **Boolean** | Whether to require SSL credentials to establish a connection to the Managed Database.  Run the [Get managed MySQL database credentials](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance-credentials) operation for access information. | [optional][default to true] |
| **region** | **String** | __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the Managed Database. |  |
| **engine** | **String** | The Managed Database engine in engine/version format. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostDatabasesMysqlInstancesRequest.new(
  type: g6-dedicated-2,
  label: example-db,
  allow_list: [&quot;203.0.113.1/32&quot;,&quot;192.0.1.0/24&quot;],
  encrypted: false,
  cluster_size: 3,
  replication_type: semi_synch,
  ssl_connection: true,
  region: us-east,
  engine: mysql/8.0.26
)
```

