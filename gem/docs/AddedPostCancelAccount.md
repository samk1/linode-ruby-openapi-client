# LinodeOpenapiClient::AddedPostCancelAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | Any reason for cancelling the account, and any other comments you might have about your Linode service. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedPostCancelAccount.new(
  comments: I&#39;m consolidating multiple accounts into one.
)
```

