# LinodeOpenapiClient::GetBetaPrograms200ResponseAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **greenlight_only** | **Boolean** | __Filterable__, __Read-only__ Whether the Beta Program requires [Green Light](https://www.linode.com/green-light/) participation for enrollment. | [optional][readonly] |
| **id** | **String** | The unique identifier of the Beta Program. | [optional] |
| **description** | **String** | __Read-only__ Additional details regarding the Beta Program. | [optional][readonly] |
| **label** | **String** | __Filterable__, __Read-only__ The name of the Beta Program. | [optional][readonly] |
| **more_info** | **String** | __Read-only__ Additional source of information for the Beta Program. | [optional][readonly] |
| **started** | **Time** | __Filterable__, __Read-only__ The start date-time of the Beta Program. | [optional][readonly] |
| **ended** | **Time** | __Filterable__, __Read-only__ The date-time that the Beta Program ended.  &#x60;null&#x60; indicates that the Beta Program is ongoing. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetBetaPrograms200ResponseAllOfDataInner.new(
  greenlight_only: true,
  id: example_open,
  description: This is an open public beta for an example feature.,
  label: Example Open Beta,
  more_info: https://www.linode.com/green-light/,
  started: null,
  ended: null
)
```

