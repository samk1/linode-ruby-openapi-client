# LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInnerHosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secondary** | **String** | The secondary/private network host for the Managed Database.  A private network host and a private IP can only be used to access a Database Cluster from Linodes in the same data center and will not incur transfer costs.  __Note__. The secondary hostname is publicly viewable and accessible. | [optional] |
| **primary** | **String** | The primary host for the Managed Database. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInnerHosts.new(
  secondary: lin-123-456-mysql-primary-private.servers.linodedb.net,
  primary: lin-123-456-mysql-mysql-primary.servers.linodedb.net
)
```

