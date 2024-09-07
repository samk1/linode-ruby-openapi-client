# LinodeOpenapiClient::GetObjectStorageSsl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssl** | **Boolean** | __Read-only__ A boolean indicating if this Bucket has a corresponding TLS/SSL certificate that was uploaded by an Account user. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetObjectStorageSsl200Response.new(
  ssl: true
)
```

