# LinodeOpenapiClient::GetManagedCredentials200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ This Credential&#39;s unique ID. | [optional][readonly] |
| **label** | **String** | The unique label for this Credential. This is for display purposes only. | [optional] |
| **last_decrypted** | **Time** | __Read-only__ The date this Credential was last decrypted by a member of Linode special forces. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedCredentials200ResponseDataInner.new(
  id: 9991,
  label: prod-password-1,
  last_decrypted: null
)
```

