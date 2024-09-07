# LinodeOpenapiClient::GetManagedCredential200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The unique label for this Credential. This is for display purposes only. | [optional] |
| **id** | **Integer** | __Read-only__ This Credential&#39;s unique ID. | [optional][readonly] |
| **last_decrypted** | **Time** | __Read-only__ The date this Credential was last decrypted by a member of Linode special forces. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedCredential200Response.new(
  label: prod-password-1,
  id: 9991,
  last_decrypted: null
)
```

