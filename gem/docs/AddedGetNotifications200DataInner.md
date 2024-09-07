# LinodeOpenapiClient::AddedGetNotifications200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | __Read-only__ A short description of this Notification. | [optional][readonly] |
| **entity** | [**AddedGetNotifications200DataInnerEntity**](AddedGetNotifications200DataInnerEntity.md) |  | [optional] |
| **type** | **String** | __Read-only__ The type of Notification this is. | [optional][readonly] |
| **body** | **String** | __Read-only__ A full description of this Notification, in markdown format.  Not all Notifications include bodies. | [optional][readonly] |
| **message** | **String** | __Read-only__ A human-readable description of the Notification. | [optional][readonly] |
| **_when** | **Time** | __Read-only__ If this Notification is of an Event that will happen at a fixed, future time, this is when the named action will be taken. For example, if a Linode is to be migrated in response to a Security Advisory, this field will contain the approximate time the Linode will be taken offline for migration. | [optional][readonly] |
| **severity** | **String** | __Read-only__ The severity of this Notification.  This field can be used to decide how prominently to display the Notification, what color to make the display text, etc. | [optional][readonly] |
| **_until** | **Time** | __Read-only__ If this Notification has a duration, this will be the ending time for the Event/action. For example, if there is scheduled maintenance for one of our systems, &#x60;until&#x60; would be set to the end of the maintenance window. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::AddedGetNotifications200DataInner.new(
  label: You have an important ticket open!,
  entity: null,
  type: ticket_important,
  body: null,
  message: You have an important ticket open!,
  _when: null,
  severity: major,
  _until: null
)
```

