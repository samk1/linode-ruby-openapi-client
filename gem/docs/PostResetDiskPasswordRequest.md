# LinodeOpenapiClient::PostResetDiskPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The new root password for the OS installed on this Disk. The password must meet the complexity strength validation requirements for a strong password. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostResetDiskPasswordRequest.new(
  password: another@complex^Password123
)
```

