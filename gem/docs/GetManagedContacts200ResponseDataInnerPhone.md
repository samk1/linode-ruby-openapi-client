# LinodeOpenapiClient::GetManagedContacts200ResponseDataInnerPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary** | **String** | This Contact&#39;s primary phone number. | [optional] |
| **secondary** | **String** | This Contact&#39;s secondary phone number. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedContacts200ResponseDataInnerPhone.new(
  primary: 123-456-7890,
  secondary: null
)
```

