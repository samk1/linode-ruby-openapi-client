# LinodeOpenapiClient::PostImportDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | The domain to import. |  |
| **remote_nameserver** | **String** | The remote nameserver that allows zone transfers (AXFR). |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostImportDomainRequest.new(
  domain: example.com,
  remote_nameserver: examplenameserver.com
)
```

