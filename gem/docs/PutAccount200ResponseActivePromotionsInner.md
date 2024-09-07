# LinodeOpenapiClient::PutAccount200ResponseActivePromotionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A detailed description of this promotion. | [optional] |
| **credit_monthly_cap** | **String** | The amount available to spend per month. | [optional] |
| **credit_remaining** | **String** | The total amount of credit left for this promotion. | [optional] |
| **image_url** | **String** | The location of an image for this promotion. | [optional] |
| **service_type** | **String** | The service to which this promotion applies. | [optional] |
| **this_month_credit_remaining** | **String** | The amount of credit left for this month for this promotion. | [optional] |
| **summary** | **String** | Short details of this promotion. | [optional] |
| **expire_dt** | **String** | When this promotion&#39;s credits expire. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutAccount200ResponseActivePromotionsInner.new(
  description: Receive up to $10 off your services every month for 6 months! Unused credits will expire once this promotion period ends.,
  credit_monthly_cap: 10.00,
  credit_remaining: 50.00,
  image_url: https://linode.com/10_a_month_promotion.svg,
  service_type: all,
  this_month_credit_remaining: 10.00,
  summary: $10 off your Linode a month!,
  expire_dt: 2018-01-31T23:59:59
)
```

