# LinodeOpenapiClient::PostExecutePayPalPayment299ResponseWarningsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **details** | **String** | Specific information related to the warning. | [optional] |
| **title** | **String** | The general warning message. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostExecutePayPalPayment299ResponseWarningsInner.new(
  details: Linode 123 could not be rebooted.,
  title: Unable to reboot Linode.
)
```

