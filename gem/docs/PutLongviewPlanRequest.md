# LinodeOpenapiClient::PutLongviewPlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **longview_subscription** | **String** | The subscription ID for a particular Longview plan. A value of &#x60;null&#x60; corresponds to Longview Free. You can send a request to the [List Longview subscriptions](https://techdocs.akamai.com/linode-api/reference/get-longview-subscriptions) operation to receive the details of each plan. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLongviewPlanRequest.new(
  longview_subscription: longview-10
)
```

