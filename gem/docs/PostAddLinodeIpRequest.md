# LinodeOpenapiClient::PostAddLinodeIpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of address you are allocating. Only IPv4 addresses may be allocated through this operation. |  |
| **public** | **Boolean** | Whether to create a public or private IPv4 address. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAddLinodeIpRequest.new(
  type: ipv4,
  public: true
)
```

