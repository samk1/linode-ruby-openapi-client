# LinodeOpenapiClient::GetLongviewClient200ResponseApps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mysql** | **Boolean** | __Read-only__ If True, the MySQL Longview Client modules is monitoring MySQL on your server. | [optional][readonly] |
| **apache** | **Boolean** | __Read-only__ If True, the Apache Longview Client module is monitoring Apache on your server. | [optional][readonly] |
| **nginx** | **Boolean** | __Read-only__ If True, the Nginx Longview Client module is monitoring Nginx on your server. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetLongviewClient200ResponseApps.new(
  mysql: true,
  apache: true,
  nginx: false
)
```

