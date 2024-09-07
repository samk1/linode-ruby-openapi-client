# LinodeOpenapiClient::PostManagedCredentialUsernamePasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username to use when accessing the Managed Service. | [optional] |
| **password** | **String** | The password to use when accessing the Managed Service. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostManagedCredentialUsernamePasswordRequest.new(
  username: johndoe,
  password: s3cur3P@ssw0rd
)
```

