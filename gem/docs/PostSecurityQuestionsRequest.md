# LinodeOpenapiClient::PostSecurityQuestionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_questions** | [**Array&lt;PostSecurityQuestionsRequestSecurityQuestionsInner&gt;**](PostSecurityQuestionsRequestSecurityQuestionsInner.md) | Security questions and response objects. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostSecurityQuestionsRequest.new(
  security_questions: null
)
```

