# LinodeOpenapiClient::GetManagedIssues200ResponseDataInnerEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | __Read-only__ This ticket&#39;s ID. | [optional][readonly] |
| **url** | **String** | __Read-only__ The relative URL where you can access this Ticket. | [optional][readonly] |
| **label** | **String** | __Read-only__ The summary for this Ticket. | [optional][readonly] |
| **type** | **String** | __Read-only__ The type of entity this is. In this case, it is always a Ticket. | [optional][readonly] |

## Example

```ruby
require 'linode_openapi_client'

instance = LinodeOpenapiClient::GetManagedIssues200ResponseDataInnerEntity.new(
  id: 98765,
  url: /support/tickets/98765,
  label: Managed Issue opened!,
  type: ticket
)
```

