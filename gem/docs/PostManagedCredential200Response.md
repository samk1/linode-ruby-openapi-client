# LinodeOpenapiClient::PostManagedCredential200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_decrypted** | **Time** | __Read-only__ The date this Credential was last decrypted by a member of Linode special forces. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ This Credential&#39;s unique ID. | [optional][readonly] |
| **label** | **String** | The unique label for this Credential. This is for display purposes only. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostManagedCredential200Response.new(
  last_decrypted: null,
  id: 9991,
  label: prod-password-1
)
```

