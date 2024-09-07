# LinodeOpenapiClient::AddedGetAccountLogins200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | __Read-only__ The username of the User that attempted the login. | [optional][readonly] |
| **status** | **String** | __Read-only__ Whether the login attempt succeeded or failed. | [optional][readonly] |
| **ip** | **String** | __Read-only__ The remote IP address that requested the login. | [optional][readonly] |
| **restricted** | **Boolean** | __Read-only__ True if the User that attempted the login was a restricted User, false otherwise. | [optional][readonly] |
| **id** | **Integer** | __Read-only__ The unique ID of this login object. | [optional][readonly] |
| **datetime** | **Time** | __Read-only__ When the login was initiated. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetAccountLogins200DataInner.new(
  username: example_user,
  status: successful,
  ip: 192.0.2.0,
  restricted: true,
  id: 1234,
  datetime: null
)
```

