# LinodeOpenapiClient::PostManagedCredentialRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The unique label for this Credential. This is for display purposes only. |  |
| **id** | **Integer** | __Read-only__ This Credential&#39;s unique ID. | [optional][readonly] |
| **last_decrypted** | **Time** | __Read-only__ The date this Credential was last decrypted by a member of Linode special forces. | [optional][readonly] |
| **username** | **String** | The username to use when accessing the Managed Service. | [optional] |
| **password** | **String** | The password to use when accessing the Managed Service. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostManagedCredentialRequest.new(
  label: prod-password-1,
  id: 9991,
  last_decrypted: null,
  username: johndoe,
  password: s3cur3P@ssw0rd
)
```

