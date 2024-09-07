# LinodeOpenapiClient::PostUserRequestAllOfLastLogin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | __Read-only__ The result of the most recent login attempt for this User. | [optional][readonly] |
| **login_datetime** | **Time** | __Read-only__ The date and time of this User&#39;s most recent login attempt. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostUserRequestAllOfLastLogin.new(
  status: successful,
  login_datetime: null
)
```

