# LinodeOpenapiClient::GetSecurityQuestions200ResponseSecurityQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID representing the security question. | [optional] |
| **question** | **String** | __Read-only__ The security question. | [optional][readonly] |
| **response** | **String** | The security question response. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetSecurityQuestions200ResponseSecurityQuestionsInner.new(
  id: 1,
  question: In what city were you born?,
  response: Gotham City
)
```

