# LinodeOpenapiClient::PostTfaConfirm200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scratch** | **String** | A one-use code that can be used in place of your Two Factor code, in case you are unable to generate one.  Keep this in a safe place to avoid being locked out of your Account. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostTfaConfirm200Response.new(
  scratch: sample two factor scratch
)
```

