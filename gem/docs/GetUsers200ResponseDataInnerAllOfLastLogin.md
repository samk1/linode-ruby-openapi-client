# LinodeOpenapiClient::GetUsers200ResponseDataInnerAllOfLastLogin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_datetime** | **Time** | __Read-only__ The date and time of this User&#39;s most recent login attempt. | [optional][readonly] |
| **status** | **String** | __Read-only__ The result of the most recent login attempt for this User. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUsers200ResponseDataInnerAllOfLastLogin.new(
  login_datetime: null,
  status: successful
)
```

