# LinodeOpenapiClient::GetUsersDefaultResponseErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The field in the request that caused this error. This may be a path, separated by periods in the case of nested fields. In some cases this may come back as &#x60;null&#x60; if the error is not specific to any single element of the request. | [optional] |
| **reason** | **String** | What happened to cause this error. In most cases, this can be fixed immediately by changing the data you sent in the request, but in some cases you will be instructed to [Open a support ticket](https://techdocs.akamai.com/linode-api/reference/post-ticket) or perform some other action before you can complete the request successfully. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetUsersDefaultResponseErrorsInner.new(
  field: fieldname,
  reason: fieldname must be a valid value
)
```

