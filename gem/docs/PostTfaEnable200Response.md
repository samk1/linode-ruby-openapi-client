# LinodeOpenapiClient::PostTfaEnable200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | Your Two Factor secret. This is used to generate time-based two factor codes required for logging in. Doing this will be required to confirm TFA an actually enable it. | [optional] |
| **expiry** | **Time** | When this Two Factor secret expires. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostTfaEnable200Response.new(
  secret: 5FXX6KLACOC33GTC,
  expiry: null
)
```

