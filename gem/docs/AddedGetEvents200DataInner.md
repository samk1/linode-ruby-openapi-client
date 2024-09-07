# LinodeOpenapiClient::AddedGetEvents200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | [**AddedGetEvents200DataInnerEntity**](AddedGetEvents200DataInnerEntity.md) |  | [optional] |
| **action** | **String** | __Filterable__, __Read-only__ The action that caused this Event. New actions may be added in the future. | [optional][readonly] |
| **time_remaining** | **String** | __Read-only__ The estimated time remaining until the completion of this Event. This value is only returned for some in-progress migration events. For all other in-progress events, the &#x60;percent_complete&#x60; attribute will indicate about how much more work is to be done. | [optional][readonly] |
| **rate** | **String** | __Read-only__ The rate of completion of the Event. Only some Events will return rate; for example, migration and resize Events. | [optional][readonly] |
| **percent_complete** | **Integer** | __Read-only__ A percentage estimating the amount of time remaining for an Event. Returns &#x60;null&#x60; for notification events. | [optional][readonly] |
| **seen** | **Boolean** | __Read-only__ If this Event has been seen. | [optional][readonly] |
| **username** | **String** | __Read-only__ The username of the User who caused the Event. | [optional][readonly] |
| **secondary_entity** | [**GetEvents200ResponseDataInnerSecondaryEntity**](GetEvents200ResponseDataInnerSecondaryEntity.md) |  | [optional] |
| **duration** | **Float** | __Read-only__ The total duration in seconds that it takes for the Event to complete. | [optional][readonly] |
| **status** | **String** | __Read-only__ The current status of this Event. | [optional][readonly] |
| **id** | **Integer** | __Filterable__, __Read-only__ The unique ID of this Event. | [optional][readonly] |
| **read** | **Boolean** | __Filterable__, __Read-only__ If this Event has been read. | [optional][readonly] |
| **created** | **Time** | __Filterable__, __Read-only__ When this Event was created. | [optional][readonly] |
| **message** | **String** | Provides additional information about the event. Additional information may include, but is not limited to, a more detailed representation of events which can help diagnose non-obvious failures. | [optional] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetEvents200DataInner.new(
  entity: null,
  action: ticket_create,
  time_remaining: null,
  rate: null,
  percent_complete: null,
  seen: true,
  username: exampleUser,
  secondary_entity: null,
  duration: 300.56,
  status: null,
  id: 123,
  read: true,
  created: null,
  message: None
)
```

