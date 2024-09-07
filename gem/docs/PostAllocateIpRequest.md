# LinodeOpenapiClient::PostAllocateIpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of address you are requesting. Only IPv4 addresses may be allocated through this operation. |  |
| **public** | **Boolean** | Whether to create a public or private IPv4 address. |  |
| **linode_id** | **Integer** | The ID of a Linode you have access to that this address will be allocated to. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostAllocateIpRequest.new(
  type: ipv4,
  public: true,
  linode_id: 123
)
```

