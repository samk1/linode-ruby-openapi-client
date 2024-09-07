# LinodeOpenapiClient::PostProfilePhoneNumberVerifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **otp_code** | **String** | The one-time code received via SMS message after running the [Send a phone number verification code](https://techdocs.akamai.com/linode-api/reference/post-profile-phone-number) operation. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostProfilePhoneNumberVerifyRequest.new(
  otp_code: US
)
```

