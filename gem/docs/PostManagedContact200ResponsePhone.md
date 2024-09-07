# LinodeOpenapiClient::PostManagedContact200ResponsePhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secondary** | **String** | This Contact&#39;s secondary phone number. | [optional] |
| **primary** | **String** | This Contact&#39;s primary phone number. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PostManagedContact200ResponsePhone.new(
  secondary: null,
  primary: 123-456-7890
)
```

