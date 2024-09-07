# LinodeOpenapiClient::PostProfilePhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iso_code** | **String** | The two-letter ISO 3166 country code associated with the phone number. |  |
| **phone_number** | **String** | A valid phone number. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostProfilePhoneNumberRequest.new(
  iso_code: US,
  phone_number: 555-555-5555
)
```

