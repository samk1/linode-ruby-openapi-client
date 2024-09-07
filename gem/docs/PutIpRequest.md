# LinodeOpenapiClient::PutIpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rdns** | **String** | The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutIpRequest.new(
  rdns: test.example.org
)
```

