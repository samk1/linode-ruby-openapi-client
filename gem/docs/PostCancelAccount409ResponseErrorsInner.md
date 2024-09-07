# LinodeOpenapiClient::PostCancelAccount409ResponseErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | A string explaining that the account could not be canceled because there is an outstanding balance on the account that must be paid first. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostCancelAccount409ResponseErrorsInner.new(
  reason: We were unable to charge your credit card for services rendered. We cannot cancel this account until the balance has been paid.
)
```

