# LinodeOpenapiClient::PostSecurityQuestionsRequestSecurityQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question_id** | **Integer** | The ID representing the security question. | [optional] |
| **security_question** | **String** | __Read-only__ The security question. | [optional][readonly] |
| **response** | **String** | The security question response. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostSecurityQuestionsRequestSecurityQuestionsInner.new(
  question_id: 1,
  security_question: In what city were you born?,
  response: Gotham City
)
```

