# LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInnerUpdates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frequency** | **String** | Whether maintenance occurs on a weekly or monthly basis. | [optional][default to &#39;weekly&#39;] |
| **day_of_week** | **Integer** | The day to perform maintenance. 1&#x3D;Monday, 2&#x3D;Tuesday, etc. | [optional] |
| **week_of_month** | **Integer** | The week of the month to perform &#x60;monthly&#x60; frequency updates. Defaults to &#x60;null&#x60;.  - Required for &#x60;monthly&#x60; frequency updates.  - Must be &#x60;null&#x60; for &#x60;weekly&#x60; frequency updates. | [optional] |
| **duration** | **Integer** | The maximum maintenance window time in hours. | [optional] |
| **hour_of_day** | **Integer** | The hour to begin maintenance based in UTC time. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetDatabasesInstances200ResponseAllOfDataInnerUpdates.new(
  frequency: weekly,
  day_of_week: 1,
  week_of_month: null,
  duration: 3,
  hour_of_day: 0
)
```

