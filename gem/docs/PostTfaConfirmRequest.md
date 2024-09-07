# LinodeOpenapiClient::PostTfaConfirmRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tfa_code** | **String** | The Two Factor code you generated with your Two Factor secret. These codes are time-based, so be sure it is current. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostTfaConfirmRequest.new(
  tfa_code: 213456
)
```

