# LinodeOpenapiClient::PostResetLinodePasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **root_pass** | **String** | The root user&#39;s password on this Linode. Linode passwords must meet a password strength score requirement that is calculated internally by the API. If the strength requirement is not met, you will receive a Password does not meet strength requirement error. |  |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostResetLinodePasswordRequest.new(
  root_pass: a$eCure4assw0rd!43v51
)
```

