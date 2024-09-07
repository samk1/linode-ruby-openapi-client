# LinodeOpenapiClient::PutDatabasesPostgreSqlInstanceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_list** | **Array&lt;String&gt;** | A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.  By default, this is an empty array (&#x60;[]&#x60;), which blocks all connections (both public and private) to the Managed Database.  If &#x60;0.0.0.0/0&#x60; is a value in this list, then all IP addresses can access the Managed Database. | [optional] |
| **type** | **String** | Request re-sizing of your cluster to a Linode Type with more disk space. For example, you could request a Linode Type that uses a higher plan.  - Needs to be a Linode Type with more disk space than your current Linode.  - Resizing to a larger Linode Type can accrue additional cost. Review the &#x60;price&#x60; output from the [List types](https://techdocs.akamai.com/linode-api/reference/get-linode-types) operation for more information.  - You can&#39;t update the &#x60;allow_list&#x60; and set a new &#x60;type&#x60; in the same request.  - Any active updates to your cluster need to complete before you can request a resize. The reverse is also true: An active resizing needs to complete before you can perform any other update. | [optional] |
| **label** | **String** | __Filterable__ A unique, user-defined string referring to the Managed Database. | [optional] |
| **updates** | [**GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerUpdates**](GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerUpdates.md) |  | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutDatabasesPostgreSqlInstanceRequest.new(
  allow_list: [&quot;203.0.113.1/32&quot;,&quot;192.0.1.0/24&quot;],
  type: g6-standard-1,
  label: example-db,
  updates: null
)
```

