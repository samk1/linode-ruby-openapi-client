# LinodeOpenapiClient::GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerHosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary** | **String** | The primary host for the Managed Database. | [optional] |
| **secondary** | **String** | The secondary/private network host for the Managed Database.  A private network host and a private IP can only be used to access a Database Cluster from Linodes in the same data center and will not incur transfer costs.  __Note__. The secondary hostname is publicly viewable and accessible. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesPostgreSqlInstances200ResponseAllOfDataInnerHosts.new(
  primary: lin-0000-000-pgsql-primary.servers.linodedb.net,
  secondary: lin-0000-000-pgsql-primary-private.servers.linodedb.net
)
```

