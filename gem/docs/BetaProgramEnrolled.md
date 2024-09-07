# LinodeOpenapiClient::BetaProgramEnrolled

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started** | **Time** | __Filterable__, __Read-only__ The start date-time of the Beta Program. | [optional][readonly] |
| **ended** | **Time** | __Filterable__, __Read-only__ The date-time that the Beta Program ended.  &#x60;null&#x60; indicates that the Beta Program is ongoing. | [optional][readonly] |
| **enrolled** | **Time** | __Filterable__, __Read-only__ The date-time of Account enrollment to the Beta Program. | [optional][readonly] |
| **id** | **String** | The unique identifier of the Beta Program. | [optional] |
| **label** | **String** | __Filterable__, __Read-only__ The name of the Beta Program. | [optional][readonly] |
| **description** | **String** | __Read-only__ Additional details regarding the Beta Program. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::BetaProgramEnrolled.new(
  started: null,
  ended: null,
  enrolled: null,
  id: example_open,
  label: Example Open Beta,
  description: This is an open public beta for an example feature.
)
```

