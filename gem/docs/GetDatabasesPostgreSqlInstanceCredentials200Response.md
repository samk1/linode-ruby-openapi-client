# LinodeOpenapiClient::GetDatabasesPostgreSqlInstanceCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | __Read-only__ The root username for the Managed Database instance. | [optional][readonly] |
| **password** | **String** | __Read-only__ The randomly-generated root password for the Managed Database instance. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesPostgreSqlInstanceCredentials200Response.new(
  username: linroot,
  password: s3cur3P@ssw0rd
)
```

