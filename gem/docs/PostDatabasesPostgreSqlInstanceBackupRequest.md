# LinodeOpenapiClient::PostDatabasesPostgreSqlInstanceBackupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The Database cluster target. If the Database is a high availability cluster, choosing &#x60;secondary&#x60; creates a snapshot backup of a replica node. | [optional][default to &#39;primary&#39;] |
| **label** | **String** | The label for the Database snapshot backup.  - Can only contain ASCII letters, numbers, and underscores (&#x60;_&#x60;). - Must be unique among other backup labels for this Database. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostDatabasesPostgreSqlInstanceBackupRequest.new(
  target: primary,
  label: db-snapshot
)
```

