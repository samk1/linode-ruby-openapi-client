# LinodeOpenapiClient::GetLongviewClients200ResponseDataInnerApps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nginx** | **Boolean** | __Read-only__ If True, the Nginx Longview Client module is monitoring Nginx on your server. | [optional][readonly] |
| **mysql** | **Boolean** | __Read-only__ If True, the MySQL Longview Client modules is monitoring MySQL on your server. | [optional][readonly] |
| **apache** | **Boolean** | __Read-only__ If True, the Apache Longview Client module is monitoring Apache on your server. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLongviewClients200ResponseDataInnerApps.new(
  nginx: false,
  mysql: true,
  apache: true
)
```

