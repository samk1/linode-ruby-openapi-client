# LinodeOpenapiClient::PutLongviewPlan200ResponsePrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hourly** | **Float** | __Read-only__ The hourly price, in US dollars, for this Subscription tier. | [optional][readonly] |
| **monthly** | **Float** | __Read-only__ The maximum monthly price in US Dollars for this Subscription tier. You will never be charged more than this amount per month for this subscription. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutLongviewPlan200ResponsePrice.new(
  hourly: 0.06,
  monthly: 40
)
```

