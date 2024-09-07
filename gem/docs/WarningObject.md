# LinodeOpenapiClient::WarningObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The general warning message. | [optional] |
| **details** | **String** | Specific information related to the warning. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::WarningObject.new(
  title: Unable to reboot Linode.,
  details: Linode 123 could not be rebooted.
)
```

