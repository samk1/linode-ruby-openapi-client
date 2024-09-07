# LinodeOpenapiClient::PostSecurityQuestions200ResponseSecurityQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | The security question response. | [optional] |
| **question_id** | **Integer** | The ID representing the security question. | [optional] |
| **security_question** | **String** | __Read-only__ The security question. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostSecurityQuestions200ResponseSecurityQuestionsInner.new(
  response: Gotham City,
  question_id: 1,
  security_question: In what city were you born?
)
```

