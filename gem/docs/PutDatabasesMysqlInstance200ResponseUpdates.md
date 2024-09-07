# LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hour_of_day** | **Integer** | The hour to begin maintenance based in UTC time. | [optional] |
| **duration** | **Integer** | The maximum maintenance window time in hours. | [optional] |
| **week_of_month** | **Integer** | The week of the month to perform &#x60;monthly&#x60; frequency updates. Defaults to &#x60;null&#x60;.  - Required for &#x60;monthly&#x60; frequency updates.  - Must be &#x60;null&#x60; for &#x60;weekly&#x60; frequency updates. | [optional] |
| **day_of_week** | **Integer** | The day to perform maintenance. 1&#x3D;Monday, 2&#x3D;Tuesday, etc. | [optional] |
| **frequency** | **String** | Whether maintenance occurs on a weekly or monthly basis. | [optional][default to &#39;weekly&#39;] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates.new(
  hour_of_day: 0,
  duration: 3,
  week_of_month: null,
  day_of_week: 1,
  frequency: weekly
)
```

